Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "markets#index"

  namespace :api do 
    namespace :v1 do 
      get '/markets/favorites', to: 'markets/favorites#index', as: 'markets_favorites'
      get '/markets/search', to: 'markets/search#index', as: 'markets_search'
      resources :markets, only: [:index, :show] 
    end
  end
end