Rails.application.routes.draw do
  get 'carts/show'
  get "/" => "users#index"
  post "/sessions" => "sessions#create"
  post "/users" => "users#create"
  get "/dashboard" => "cafeteria#index"
  get "/menus" => "menus#show"
  get "/signout" => "sessions#destroy"
  post "/menus" => "menus#index"
  get "/mycart" => "carts#show"
  get "/addmenu" => "menus#add"
  post "/addmenu" => "menus#create"
  resources :charges
  resource :carts, only:[:show]
  resources :ordeer_items
  
end
