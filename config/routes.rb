Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
   devise_for :users

	  root 'shop#index'

 resources :products do
    member do
      get :delete
    end
  end

  get 'shop/index'
  get 'shop/contact'
  get 'shop/about'
  get 'shop/login'
  get 'shop/checkout'
  get 'shop/cart'
  get 'shop/product'
  get 'shop/productDetail'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
