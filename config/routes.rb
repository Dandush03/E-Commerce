# frozen_string_literal: true

Rails.application.routes.draw do
  get '/api', to: 'api#index'

  namespace :api, defaults: { format: :json } do
    namespace :auth do
      get '/', to: 'authentication#authorize'
      post '/login', to: 'authentication#authenticate'
      post '/signup', to: 'authentication#create'
    end

    namespace :v1 do 
      resources :clients, only: %i[create]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
