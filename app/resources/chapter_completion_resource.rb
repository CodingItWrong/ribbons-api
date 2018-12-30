# frozen_string_literal: true
class ChapterCompletionResource < ApplicationResource
  attributes :chapter, :created_at

  has_one :reading

  def self.records(options = {})
    user = current_user(options)
    user.chapter_completions
  end

  filter :today, apply: -> (records, _value, _options) {
    records.where(
      'chapter_completions.created_at > ?',
      DateTime.now.beginning_of_day,
    )
  }
end
