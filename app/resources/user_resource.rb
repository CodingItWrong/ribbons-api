# frozen_string_literal: true
class UserResource < JSONAPI::Resource
  attributes *%i[email password]
end
