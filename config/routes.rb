Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  resources :sessions
  resources :users
 
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"

end
