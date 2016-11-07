Rails.application.routes.draw do

  get '/dashboard', to: 'dashboard#index'

  resources :likes
  resources :photos
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
