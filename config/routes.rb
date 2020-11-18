Rails.application.routes.draw do
  get 'messages/index'
  get 'contacts/new'
  devise_for :users
  get 'products/index'
  get 'products/search'
  root 'products#index'
  get 'products/search'
  resources :users, only: [:edit, :update]
  resources :messages, only: [:new, :create, :edit, :update]
end
