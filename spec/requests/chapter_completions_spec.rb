# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'chapter_completions', type: :request do
  include_context 'with a logged in user'

  it 'can be filtered to today' do
    book = FactoryBot.create(:book)
    reading = FactoryBot.create(:reading, book: book, user: user)
    FactoryBot.create(
      :chapter_completion,
      reading: reading, created_at: 2.days.ago,
    )
    FactoryBot.create(
      :chapter_completion,
      reading: reading, created_at: Time.now,
    )

    get '/chapterCompletions?filter[today]=true', headers: headers

    expect(response.status).to eq(200)

    response_body = JSON.parse(response.body)
    expect(response_body['data'].count).to eq(1)
  end
end
