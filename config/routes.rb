Restaurante::Application.routes.draw do
  
  root to: 'static#index'
  
  match 'about', to: "static#about"
  
  match 'contact', to: "static#contact"
  
  match 'help', to: "static#help"
  
  resources :categories

  resources :clients

  resources :courses

  resources :orders

  resources :tables
  
  resources :users
  
  resources :waiters
  
end