Rails.application.routes.draw do
### User Routes ###
  post "/users" => "users#create"
  get "/users" => "users#show"

### Session Routes ###
  post "/sessions" => "sessions#create"

### Group Routes ###
  post "/groups" => "groups#create"
  get "/groups" => "groups#index"
  put "/groups/:id" => "groups#update"
  get "/groups/:id" => "groups#show"
  get "/users/groups" => "groups#user_groups"

### Event Routes ###
  post "/groups/:group_id/events" => "events#create"
  put "/events/:id" => "events#update"
  get "/events" => "events#index"
  get "/events/:id" => "events#show"
  get "/groups/:group_id/events" => "events#group_events_index"
  get "/users/events" => "events#user_events"

### rsvp routes ###
  post "events/:event_id/rsvps" => "rsvps#create"
  get "/rsvps" => "rsvps#index"
  get "/rsvps/:id" => "rsvps#show"
  put "/rsvps/:id" => "rsvps#update"

### cause routes ###
  post "/causes" => "causes#create"

### group_causes routes ###
  post "/groups/:group_id/causes" => "group_causes#create"

### tag routes ###
  post "/tags" => "tags#create"
  get "/tags" => "tags#index"

### event_tag routes ###
  post "/events/:event_id/tags" => "event_tags#create"
  get "/events/:event_id/tags" => "event_tags#index"
end