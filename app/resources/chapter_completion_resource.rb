# frozen_string_literal: true
class ChapterCompletionResource < ApplicationResource
  attributes :chapter

  has_one :reading

  def self.records(options = {})
    user = current_user(options)
    user.chapter_completions
  end
end
