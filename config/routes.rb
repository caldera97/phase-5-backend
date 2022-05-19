Rails.application.routes.draw do
  resources :favorites
  resources :comments
  resources :posts
  resources :users

  get "/posts/:id/comments", to: "posts#index_comments"

  get "/users/:id/posts", to: "users#index_posts"

  get "/me", to: "users#show" #make useEffect in app to fetch here to see if logged in
  post "/signup", to: "users#create"
  post '/login', to:  'session#create' 
  delete '/logout', to:  'session#destroy'

end
