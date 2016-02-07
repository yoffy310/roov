Rails.application.routes.draw do
  devise_for :users
  resources :rooms
  resources :users, only: [:show]
  root to: "rooms#index"

end
