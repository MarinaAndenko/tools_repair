Rails.application.routes.draw do
  resources :orders
  resources :clients
  resources :repairs
  resources :tools
  resources :users_admin, controller: 'users', only: [:new, :create]
  devise_for :users
end
