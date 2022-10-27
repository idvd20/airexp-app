Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "experiences#index"

  get "experiences" => "experiences#index"
  get "experiences/:id" => "experiences#show", as: "experience"
end
