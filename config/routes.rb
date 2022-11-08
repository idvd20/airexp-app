Rails.application.routes.draw do
  resources :likes
  
  root "experiences#index"
  
  resources :experiences do
    resources :registrations
  end
  resource :session, only: [:new, :create, :destroy]
  resources :users
  get "signup" => "users#new"
  get "signin" => "sessions#new"
end
