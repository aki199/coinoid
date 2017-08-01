Rails.application.routes.draw do

  post ':id/follow_user', to: 'relationships#follow_user', as: :follow_user
  post ':id/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user
  post ':id/subscribe_user', to: 'relationships#subscribe_user', as: :subscribe_user
  post ':id/unsubscribe_user', to: 'relationships#unsubscribe_user', as: :unsubscribe_user
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'users/show'
  devise_for :users

  resources :users do
    member do
      get :following, :followers
    end
  end
  
  
  resources :categories
  resources :products
  resources :follow
  
  resources :conversations do
  resources :messages
    collection do
      get :inbox
      get :all, action: :index
      get :sent
      get :trash
    end
  end
  
  resources :posts do
    resources :comments
    resource :like, module: :posts
    post :upvote, on: :member
  end
  root 'posts#index'
end
