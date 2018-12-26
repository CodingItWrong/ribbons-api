# frozen_string_literal: true
class BookResource < ApplicationResource
  attributes *%i[name num_chapters]
end
