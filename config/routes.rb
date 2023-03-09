Rails.application.routes.draw do
  devise_for :users
  root to: "saunas#index"
  resources :saunas, only: :index
  resources :users, only: [:edit, :update]
end
