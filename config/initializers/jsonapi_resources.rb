# frozen_string_literal: true

JSONAPI.configure do |config|
  # built in key format options are :underscored_key, :camelized_key and :dasherized_key
  config.json_key_format = :camelized_key

  #:underscored_route, :camelized_route, :dasherized_route, or custom
  config.route_format = :camelized_route
end
