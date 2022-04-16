Rails.application.routes.draw do
  
  root :to => 'pages#home'
  get '/checkout' => 'pages#checkout'

  resources :users, :only => [:new, :create, :index, :show]
  resources :orders
  resources :mangas
  resources :volumes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
  