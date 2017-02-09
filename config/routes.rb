Rails.application.routes.draw do
  root to: 'orders#index'
  resources :tools
  resources :orders
  resources :clients
  resources :repairs
  resources :users_admin, controller: 'users' do
    patch 'make_admin', on: :member
  end
  devise_for :users
end
