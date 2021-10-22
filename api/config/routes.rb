Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index]
      resources :typings, only: [:index]
      resources :sessions
      resources :character_weapon_name_origin
      resources :retro_game_introduction
      resources :game_list
      resources :game_quotes_collection

      resources :users do
        collection do
          get 'me'
        end
      end
      resources :profile
    end

    get '*path', to: 'home#index', constraints: lambda { |req|
      req.path.exclude? 'rails/active_storage'
    }
  end
end
