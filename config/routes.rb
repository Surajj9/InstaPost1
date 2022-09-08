Rails.application.routes.draw do
  get 'favourites/update'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#home"
  
#  resources :posts, only: [:show, :index, :new, :create,:edit, :update]
resources :favourites, only: [:index]
resources :posts do
resources :comments, only: [:create, :destroy]
resources :likes
end
end
