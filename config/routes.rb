# frozen_string_literal: true
Rails.application.routes.draw do
  jsonapi_resources :users, only: %w[create]
  jsonapi_resources :readings
end
