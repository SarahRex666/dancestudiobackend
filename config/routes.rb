Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :teachers
  resources :dance_classes
  resources :registrations
  resources :users 
  resources :sessions
  resources :reviews
  resources :passwords
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
  post "/classreg", to: "registration#create"
  delete "/logout", to: "sessions#destroy"
end
