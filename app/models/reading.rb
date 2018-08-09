# frozen_string_literal: true
class Reading < ApplicationRecord
  belongs_to :user
  belongs_to :book

  def complete
    completed_at.present?
  end

  def complete=(complete)
    self.completed_at = complete ? DateTime.now : nil
  end
end
