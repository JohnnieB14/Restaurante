Restaurante::Application.routes.draw do
  
  get "register/new"

  root to: 'static#index'
  
  match 'about', to: "static#about"
  
  match 'contact', to: "static#contact"
  
  match 'login', to: "static#login"
  
  match 'signup', to: 'register#new' 
  
  resources :categories

  resources :clients

  resources :courses

  resources :orders

  resources :tables
  
  resources :users
  
  resources :waiters
  
end