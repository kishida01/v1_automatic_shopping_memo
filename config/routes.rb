Rails.application.routes.draw do
  root "home#index"
  resources :users, only: %i[new create]
  resources :password_resets, only: %i[new create edit update]
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout"
end
