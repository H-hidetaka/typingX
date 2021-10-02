Rails.application.routes.draw do
  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index]
      resources :typings, only: [:index]
      resources :sessions
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
