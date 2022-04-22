Rails.application.routes.draw do
  
  get "/sales" => "sales#index"
  post "/sales" => "sales#create"
  get "/sales/:id" => "sales#show"
  patch "/sales/:id" => "sales#update"
  delete "/sales/:id" => "sales#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  
end
