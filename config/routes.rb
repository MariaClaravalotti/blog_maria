Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  resources :posts 
  resources :comments, only: %i[create]
  resources :users, only: [:show, :edit, :update]

  
end
