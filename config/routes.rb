Rails.application.routes.draw do
  get '/addproduct/:id', to: "carts#addproduct", as: "addproduct"
  get '/removeproduct/:id', to: "carts#removeproduct", as: "removeproduct"

  resources :products, :carts
  resources :checkout, only: [:create, :new]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
