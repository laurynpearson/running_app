Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get '/users' => 'users#index'
    get '/users/:id' => 'users#show'
    post '/users' => 'users#create'

    get '/routes' => 'routes#index'
    get '/routes/:id' => 'routes#show'
    post '/routes' => 'routes#create'

    get '/shoes' => 'shoes#index'
    get '/shoes/:id' => 'shoes#show'
    post '/shoes' => 'shoes#create'
    patch '/shoes/:id' => 'shoes#update'

    post '/sessions' => 'sessions#create'
    
    get '/urs' => 'user_routes_shoes#index'
    post '/urs/' => 'user_routes_shoes#create'

    get '/routecoords' => 'routecoords#index'
    post '/routecoords' => 'routecoords#create'

    get '/races' => 'races#index'
    get '/races/:id' => 'races#show'
  end
end
