Rails.application.routes.draw do
 
  resources :comments
  resources :likes
  resources :posts do
    resources :comments
  post "/allcomments", to: "comments#allcomments"

  end

  get "/allposts", to: "posts#allposts"
  post "/allcomments", to: "comments#allcomments"

  post "/signup", to: "users#create"
  get "/user", to: "users#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
