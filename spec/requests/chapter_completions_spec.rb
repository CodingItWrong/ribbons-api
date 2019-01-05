# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'chapter_completions', type: :request do
  it 'can be filtered to today' do
    book = FactoryBot.create(:book)
    user = FactoryBot.create(:user)
    reading = FactoryBot.create(:reading, book: book, user: user)
    FactoryBot.create(:chapter_completion,
                      reading: reading,
                      created_at: 2.days.ago)
    FactoryBot.create(:chapter_completion,
                      reading: reading,
                      created_at: Time.now)

    token = FactoryBot.create(:access_token, resource_owner_id: user.id).token
    headers = {
      'Authorization' => "Bearer #{token}",
      'Content-Type' => 'application/vnd.api+json',
    }

    get '/chapterCompletions?filter[today]=true', headers: headers

    expect(response.status).to eq(200)

    response_body = JSON.parse(response.body)
    expect(response_body['data'].count).to eq(1)
  end
end
