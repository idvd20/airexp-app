Rails.application.routes.draw do
  resources :users
  
  root "experiences#index"
  
  resources :experiences do
    resources :registrations
  end
end
