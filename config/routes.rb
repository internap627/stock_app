Rails.application.routes.draw do
  resources :stocks
  resources :portfolios
  resources :companies
  resources :brokers
  resources :users, only: [:new, :show]

  # session functionality
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post "/logout", to: "sessions#destroy"

  root "users#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # update broker route
  post '/users/:user_id/update_broker_id/:broker_id', to: 'users#update_broker'
end
