Rails.application.routes.draw do

  root "static_pages#home"
  get "users/show"
  get "users/new"
  get "/help", to: "static_pages#help"
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  delete "logout" => "sessions#destroy"
  resources :users
end
