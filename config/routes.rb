Rails.application.routes.draw do
### User Routes
  post "/users" => "users#create"

### Session Routes
  post "/sessions" => "sessions#create"

### Group Routes
  post "/groups" => "groups#create"
  get "/groups" => "groups#index"
  put "/groups/:id" => "groups#update"
  get "/groups/:id" => "groups#show"
end
