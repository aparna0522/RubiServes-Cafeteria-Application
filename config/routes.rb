Rails.application.routes.draw do
  get "/" => "users#index"
  post "/sessions" => "sessions#create"
  post "/users" => "users#create"
  get "/dashboard" => "cafeteria#index"
  get "/menus" => "menus#show"
  get "/signout" => "sessions#destroy"
  post "/menus" => "menus#index"
  get "/mycart" => "orders#index"
  get "/addmenu" => "menus#add"
  post "/addmenu" => "menus#create"
end
