# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Reading do
  describe '#furthest_read_chapter' do
    it 'returns 0 when there are no chapter completions' do
      reading = Reading.new
      expect(reading.furthest_read_chapter).to eq(0)
    end

    it 'returns the max chapter completion number' do
      reading = FactoryBot.create(:reading)
      reading.chapter_completions.create(chapter: 1)
      reading.chapter_completions.create(chapter: 2)
      expect(reading.furthest_read_chapter).to eq(2)
    end
  end
end
