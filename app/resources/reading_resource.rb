# frozen_string_literal: true
class ReadingResource < JSONAPI::Resource
  attributes *%i[book_num]
end
