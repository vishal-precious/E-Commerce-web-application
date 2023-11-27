Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/addproduct/:id', to: "carts#addproduct", as: "addproduct"
  get '/removeproduct/:id', to: "carts#removeproduct", as: "removeproduct"

  resources :products, :carts
  resources :checkout, only: [:create, :new]
  resources :user_details, only: [:create, :new]
  resources :product_review, only: [:show, :create, :new]

  get "/user_details/seller", to: "user_details#index", as: "user_details_seller"
  devise_for :users
  root to: "homes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
