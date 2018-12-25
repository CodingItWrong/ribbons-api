# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'readings', type: :request do
  it 'does not allow retrieving readings when unauthenticated' do
    get '/readings'

    expect(response.status).to eq(401)
  end

  context 'when authenticated' do
    let(:book) { FactoryBot.create(:book) }
    let(:user) { FactoryBot.create(:user) }
    let(:token) { FactoryBot.create(:access_token, resource_owner_id: user.id).token }
    let(:headers) {
      {
        'Authorization' => "Bearer #{token}",
        'Content-Type' => 'application/vnd.api+json',
      }
    }

    it "allows retrieving user's own readings" do
      FactoryBot.create(:reading, book: book, user: user)
      FactoryBot.create(:reading, book: book)

      get '/readings?include=book', headers: headers

      expect(response.status).to eq(200)

      response_body = JSON.parse(response.body)
      expect(response_body['data'].count).to eq(1)
      expect(response_body['included'][0]['id']).to eq(book.id.to_s)
    end

    it 'associates a reading to the user when creating' do
      params = {
        data: {
          type: 'readings',
          relationships: {
            book: {
              data: {
                type: 'books',
                id: book.id,
              },
            },
          },
        },
      }

      post '/readings', params: params.to_json, headers: headers

      expect(response.status).to eq(201)
      expect(Reading.last.user).to eq(user)
    end
  end
end
