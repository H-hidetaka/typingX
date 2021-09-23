Rails.application.routes.draw do
  get 'static_pages/top'
  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index]
      resources :typings, only: [:index]
      resources :users, only: %i[new create]
      get 'login', to: 'user_sessions#new'
      post 'login', to: 'user_sessions#create'
      post 'logout', to: 'user_sessions#destroy'
    end
  end
end
