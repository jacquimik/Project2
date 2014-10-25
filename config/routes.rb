Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, only: [:new, :create, :destroy, :edit, :update, :show]
  resources :products
  resources :categories
  resources :orders
  resources :orders_products
  #resources :admin

  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'
  get '/blog' => 'pages#blog'
  get '/contact' => 'pages#contact'

  resources :sessions, only: [:new, :create, :destroy]

  namespace :admin do
    resources :products
  end


end
