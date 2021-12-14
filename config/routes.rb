Rails.application.routes.draw do
### USER ROUTES
  post "/users" => "users#create"
### SESSION ROUTES
  post "/sessions" => "sessions#create"
end
