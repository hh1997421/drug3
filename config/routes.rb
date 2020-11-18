Rails.application.routes.draw do
  devise_for :users
  get 'products/index'
  get 'products/search'
  root 'products#index'
  get 'products/search'
  resources :users, only: [:edit, :update]
end
