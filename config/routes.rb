Rails.application.routes.draw do
  get 'shopping_carts/add'
  get 'shopping_cart/add'
  get 'home/index'
  root 'home#index'
  resources :order_products
  resources :orders
  resources :addresses
  resources :users
  resources :products
  get '/add', to: 'shopping_carts#add'
end
