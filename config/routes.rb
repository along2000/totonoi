Rails.application.routes.draw do
  devise_for :users
  root to: "saunas#index"
  resources :saunas do
    member do
      get 'select_category_index'
    end
  end
  
  resources :users, only: [:edit, :update, :destroy]
end
