Rails.application.routes.draw do
  
  root "experiences#index"
  
  resources :experiences do
    resources :registrations
    resources :likes, only: [:create, :destroy]
  end
  resource :session, only: [:new, :create, :destroy]
  resources :users
  get "signup" => "users#new"
  get "signin" => "sessions#new"
end
