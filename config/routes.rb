Rails.application.routes.draw do
  resources :bookings, only: [:index, :show, :create, :update, :destroy]
  resources :listings, only: [:index, :show]
  resources :favorites, only: [:index]
  resources :users, only: [:show, :create]

  post "/login", to: "sessions#create"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
