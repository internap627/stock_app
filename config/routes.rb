Rails.application.routes.draw do
  resources :stocks
  resources :portfolios
  resources :companies
  resources :brokers
  resources :users
  post "/logout", to: "sessions#destroy"

  root "users#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
