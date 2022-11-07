Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy]
      resources :recipes
      resources :ingredients
      resources :favorites
      resources :tags
      resources :collections
      # resources :posts, only: [:index, :create]
    end
  end
end
