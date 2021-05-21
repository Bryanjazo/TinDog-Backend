Rails.application.routes.draw do

  resources :messages
  resources :likes
  resources :users
  resources :sessions

  resources :users, only: [:create, :show, :index] do
   resources :profiles
 end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



end