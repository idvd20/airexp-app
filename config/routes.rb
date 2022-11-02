Rails.application.routes.draw do
  
  root "experiences#index"
  
  resources :experiences do
    resources :registrations
  end
  resources :users
  get "signup" => "users#new"
end
