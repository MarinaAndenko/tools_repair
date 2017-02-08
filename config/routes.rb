Rails.application.routes.draw do
  resources :tools
  resources :orders
  resources :clients
  resources :repairs
  resources :users_admin, controller: 'users'
  devise_for :users
end
