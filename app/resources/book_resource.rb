# frozen_string_literal: true
class BookResource < ApplicationResource
  attributes *%i[name num_chapters last_read_at]

  def last_read_at
    current_user.readings
                .where(book: @model)
                .map(&:completed_at)
                .compact
                .max
  end
end
