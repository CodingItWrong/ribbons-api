# frozen_string_literal: true
class ReadingResource < ApplicationResource
  attributes :complete, :completed_at, :furthest_read_chapter

  filter(
    :complete,
    apply:
      lambda do |records, value, _options|
        if value == %w[true]
          records.where('readings.completed_at IS NOT NULL')
        else
          records.where('readings.completed_at IS NULL')
        end
      end,
  )

  has_one :book
  has_many :chapter_completions

  before_create { _model.user = current_user }

  def self.creatable_fields(context)
    super - %i[completed_at]
  end

  def self.updatable_fields(context)
    super - %i[completed_at furthest_read_chapter]
  end

  def self.records(options = {})
    user = current_user(options)
    user.readings
  end
end
