Rails.application.routes.draw do
  #get 'users/show'
  #get 'users/edit'
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :book, only: [:new, :create, :index, :show, :destory]
  resources :users, only: [:show, :edit]
end