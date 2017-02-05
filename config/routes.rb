Rails.application.routes.draw do
  resources :tools
  resources :orders
  resources :clients
  resources :repairs
  devise_for :users
end
