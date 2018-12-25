# frozen_string_literal: true
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  has_many :readings
  has_many :chapter_completions, through: :readings
end
