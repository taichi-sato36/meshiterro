Rails.application.routes.draw do
  devise_for :users
  root 'post_images#index'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  	resource :favorites, only: [:create, :destroy]
  	resource :post_comments, only: [:create]
  end
  resources :users, only: [:show]
end
