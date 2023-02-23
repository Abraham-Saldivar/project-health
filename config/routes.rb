Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do 
    namespace :v1 do
      resources :users
      resources :mposts, only: [:create, :update, :destroy]
    end 
  end

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: 'pages#index', via: :all
end
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }



