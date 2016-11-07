Rails.application.routes.draw do

  get 'about/index'

  get '/dashboard', to: 'dashboard#index'
  # get '/signup', to: 'registrations#new'
  # get '/signin', to: 'devise/sessions#create'
  # get '/signout', to: 'devise/sessions#destroy'
  get '/profiles', to: 'profiles#show'
  get '/about', to: 'about#index'


  resources :likes
  resources :photos
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
