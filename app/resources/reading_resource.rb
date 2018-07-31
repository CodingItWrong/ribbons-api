# frozen_string_literal: true
class ReadingResource < ApplicationResource
  attributes *%i[book_num]

  before_create { _model.user = current_user }

  def self.records(options = {})
    user = current_user(options)
    user.readings
  end

  private

  def self.current_user(options)
    options.fetch(:context).fetch(:current_user)
  end
end
