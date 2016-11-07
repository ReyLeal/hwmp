Rails.application.routes.draw do

  get 'about/index'

  devise_scope :user do
    get 'signin', to: 'devise/sessions#new'
  end
  devise_scope :user do
    get 'signout', to: 'devise/sessions#destroy'
  end
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  get '/dashboard', to: 'dashboard#index'
  # get '/signup', to: 'registrations#new'
  # get '/signin', to: 'devise/sessions#create'
  # get '/signout', to: 'devise/sessions#destroy'
  get '/photos', to: 'photos#index'
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
