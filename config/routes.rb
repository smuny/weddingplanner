Rails.application.routes.draw do
  resources :caters
  resources :wedding_caters
  resources :wedding_venues
  resources :appointments
  resources :users

  get "/sessions/new", to: "sessions#new", as: "login" #login_path
  get "/login", to: "sessions#new"
  delete "/sessions", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
