Rails.application.routes.draw do
  resources :tools
  resources :orders
  resources :clients
  resources :repairs
  resources :users_admin, controller: 'users', only: [:new, :create]
  devise_for :users
end
