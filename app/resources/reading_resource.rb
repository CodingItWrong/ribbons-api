# frozen_string_literal: true
class ReadingResource < ApplicationResource
  attributes :complete, :completed_at

  filter :complete, apply: ->(records, value, _options) {
    if value == ['true']
      records.where('readings.completed_at IS NOT NULL')
    else
      records.where('readings.completed_at IS NULL')
    end
  }

  has_one :book

  before_create do
    _model.user = current_user
  end

  def self.creatable_fields(context)
    super - %i[completed_at]
  end

  def self.updatable_fields(context)
    super - %i[completed_at]
  end

  def self.records(options = {})
    user = current_user(options)
    user.readings
  end
end
