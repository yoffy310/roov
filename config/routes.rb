Rails.application.routes.draw do
  devise_for :users
  resources :rooms
  resources :users, only: [:show, :edit, :update]
  root to: "rooms#index"

end
