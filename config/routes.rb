Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, only: [:new, :create, :destroy, :edit, :update, :show]
  resources :products
  resources :categories
  resources :orders
  resources :orders_products

  get '/about' => 'pages#about'

  resources :sessions, only: [:new, :create, :destroy]


end
