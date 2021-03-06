Rails.application.routes.draw do
  get 'carts/show'

  root :to => 'pages#home'

  resources :users, only: [:new, :create, :destroy, :edit, :update, :show]
  resources :products, only: [:index, :show]
  resources :categories
  resources :orders_products
  
  resource :cart, only: [:show, :edit, :update]
  resources :cart_products, only: [:create, :destroy], path: 'cart-products'

  resources :orders, only: [:new, :create, :show, :update] do
    member do
      patch :payment
      get :success
      get :error
    end
  end

  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'
  get '/blog' => 'pages#blog'
  get '/contact' => 'pages#contact'
  get '/shipping' => 'pages#shipping'
  get '/sizing' => 'pages#shipping'
  get '/returns' => 'pages#shipping'
  get '/paymentinfo' => 'pages#paymentinfo'
  get '/competitions' => 'pages#competitions'


  resources :sessions, only: [:new, :create, :destroy]

  namespace :admin do
    resources :products
    resources :categories
  end

end
