Rails.application.routes.draw do
  get 'carts/show'

  root :to => 'pages#home'

  resources :users, only: [:new, :create, :destroy, :edit, :update, :show]
  resources :products, only: [:index, :show]
  resources :categories
  resources :orders_products
  
  resource :cart, only: [:show, :edit, :update]
  resources :cart_products, only: [:create, :destroy], path: 'cart-products'

  resources :orders, only: [:new, :create, :show]

  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'
  get '/blog' => 'pages#blog'
  get '/contact' => 'pages#contact'

  resources :sessions, only: [:new, :create, :destroy]

  # resource :cart, only: [:show] do
  # put 'add/:product_id', to: 'carts#add', as: :add_to
  # put 'remove/:product_id', to: 'carts#remove', as: :remove_from
  # end

  namespace :admin do
    resources :products
    resources :categories
  end

end
