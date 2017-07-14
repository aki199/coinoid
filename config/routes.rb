Rails.application.routes.draw do
  resources :categories
  resources :products
  devise_for :users
  resources :subdirs
    resources :messages do
      resources :comments
    end
    root 'messages#index'
end
