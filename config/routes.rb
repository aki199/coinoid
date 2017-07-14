Rails.application.routes.draw do
  get 'users/show'

  resources :categories
  resources :products
  devise_for :users
  resources :messages do
    resources :comments
  end
  resources :users
  root 'messages#index'
end
