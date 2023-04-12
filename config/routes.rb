Rails.application.routes.draw do
  devise_for :users
  root to: "saunas#index"
  resources :saunas, only: [:index, :new, :create, :show]
  resources :users, only: [:edit, :update, :destroy]
end
