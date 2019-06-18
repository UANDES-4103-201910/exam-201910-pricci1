Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :order_products
  resources :orders
  resources :addresses
  resources :users
  resources :products
end
