# frozen_string_literal: true
class Reading < ApplicationRecord
  belongs_to :user
  belongs_to :book

  has_many :chapter_completions

  def complete
    completed_at.present?
  end

  def complete=(complete)
    self.completed_at = complete ? Time.now : nil
  end
end
