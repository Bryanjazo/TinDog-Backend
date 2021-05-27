Rails.application.routes.draw do

  resources :likes
  resources :users
  resources :sessions
  resources :profiles


  resources :users, only: [:create, :show, :index] do
   resources :profiles
   resources :likes
 end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



end
