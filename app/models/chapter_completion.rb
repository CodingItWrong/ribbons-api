# frozen_string_literal: true
class ChapterCompletion < ApplicationRecord
  belongs_to :reading

  scope :today,
        lambda {
          where(
            'chapter_completions.created_at > ?',
            DateTime.now.beginning_of_day,
          )
        }
end
