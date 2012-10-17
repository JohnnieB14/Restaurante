Restaurante::Application.routes.draw do
  
  get "register/new"

  root to: 'static#index'
  
  match 'signup', to: 'register#new' 
  
  match 'about', to: "static#about"
  
  match 'contact', to: "static#contact"
  
  resources :categories

  resources :clients

  resources :courses

  resources :orders

  resources :tables
  
  resources :users
  
  resources :waiters
  
end