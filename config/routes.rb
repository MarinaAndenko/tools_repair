Rails.application.routes.draw do
  resources :orders
  resources :clients
  resources :repairs
  resources :tools
  devise_for :users
end
