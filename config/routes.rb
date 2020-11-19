Rails.application.routes.draw do
  get 'rooms/show'
  get 'tweets/new'
  get 'messages/index'
  get 'contacts/new'
  devise_for :users
  root 'products#index'
  get 'products/search'
  resources :products, only: [:index, :edit]
  resources :users, only: [:edit, :update]
  resources :messages, only: [:new, :create, :edit, :update]

  resources :tweets, only: [:new, :create]
end
