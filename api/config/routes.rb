Rails.application.routes.draw do
  get 'static_pages/top'
  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index]
      resources :typings, only: [:index]
    end
  end
end
