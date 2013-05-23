Jqmoblog::Application.routes.draw do


  get "home/index"

  get "users/new"

  resources :posts
  root :to => "home#index"
  
  resources :users
  resources :items
  resources :sessions, only: [:new, :create, :destroy]
  match '/signup', to: 'users#new'
  match '/signin', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  match '/market', to: 'items#index'
  
  match '/location', to: 'home#location'
  match '/map', to: 'items#map'
end
