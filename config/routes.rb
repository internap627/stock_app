Rails.application.routes.draw do
  resources :stocks
  resources :portfolios
  resources :companies
  resources :brokers
  resources :users

  # session functionality
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post "/logout", to: "sessions#destroy"

  root "users#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
