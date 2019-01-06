# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'books', type: :request do
  include_context 'with a logged in user'

  it 'allows retrieving all books' do
    books = FactoryBot.create_list(:book, 3)
    time = '2019-01-05T14:18:30.240Z'
    FactoryBot.create(:reading, book: books[1], user: user, completed_at: time)

    get '/books', headers: headers

    expect(response.status).to eq(200)

    response_body = JSON.parse(response.body)
    expect(response_body['data'].count).to eq(3)
    expect(response_body['data'][0]['attributes']['name']).to eq(books[0].name)
    expect(response_body['data'][0]['attributes']['lastReadAt']).to be_nil
    expect(response_body['data'][1]['attributes']['lastReadAt']).to eq(time)
  end
end
