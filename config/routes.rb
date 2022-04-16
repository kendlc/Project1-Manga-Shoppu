Rails.application.routes.draw do
  
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]
  resources :orders
  resources :mangas
  resources :volumes
  resources :carts, :only => [:show, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
  