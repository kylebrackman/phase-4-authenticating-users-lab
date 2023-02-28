Rails.application.routes.draw do
  get 'user/index'
  resources :articles, only: [:index, :show]
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
