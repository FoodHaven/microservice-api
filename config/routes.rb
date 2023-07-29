Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "markets#index"

  namespace :api do 
    namespace :v1 do 
      resources :markets, only: [:index, :show] 
      get '/markets/search', to: 'markets/search#index', as: 'markets_search'
      get '/markets/favorites', to: 'markets/favorites#index', as: 'markets_favorites'
    end
  end
end