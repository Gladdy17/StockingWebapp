Rails.application.routes.draw do
  resources :stocks
  devise_for :users
  # get 'home/index'
  root 'home#index'
  get 'home/about'

  post "/" => 'home#index'

  # devise_for :users

devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
