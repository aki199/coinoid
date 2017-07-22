Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'users/show'

  resources :categories
  resources :products
  resources :conversations do
    resources :messages

    collection do
      get :inbox
      get :all, action: :index
      get :sent
      get :trash
    end
  end
  
  devise_for :users
  resources :posts do
    resources :comments
    resource :like, module: :posts
    post :upvote, on: :member
  end
  resources :users
  root 'posts#index'
end
