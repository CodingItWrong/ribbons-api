Rails.application.routes.draw do
  jsonapi_resources :users, only: %w[create]
end
