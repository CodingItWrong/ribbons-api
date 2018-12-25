# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books', type: :request do
  it 'allows retrieving all books' do
    books = FactoryBot.create_list(:book, 3)

    get '/books'

    expect(response.status).to eq(200)

    response_body = JSON.parse(response.body)
    expect(response_body['data'].count).to eq(3)
    expect(response_body['data'][0]['attributes']['name']).to eq(books[0].name)
  end
end
