Rails.application.routes.draw do
  get 'users/show'

  resources :categories
  resources :products
  resources :conversations do
    resources :messages
  end
  
  devise_for :users
  resources :posts do
    resources :comments
    post :upvote, on: :member
  end
  resources :users
  root 'posts#index'
end
