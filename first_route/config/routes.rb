Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  "/users", to: "users#index"
  
  get "/users/:id", to: "users#show"
  
  post "/users", to: "users#create", as: "new_user"
  
  patch "/users/:id", to: "users#update"
  
  delete "/users/:id", to: "users#destroy"
  
  get "/users/:id/artworks", to: "artworks#index"
  
  post "/artwork_shares", to: "artwork_shares#create"
  
  delete "/artwork_shares/:id", to: "artwork_shares#destroy"
  
  get "/artworks/:id", to: "artworks#show"
  
  post "/artworks", to: "artworks#create", as: "new_artwork"
  
  patch "/artworks/:id", to: "artworks#update"
  
  delete "/artworks/:id", to: "artworks#destroy"
end
