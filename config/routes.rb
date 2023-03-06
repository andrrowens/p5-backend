Rails.application.routes.draw do
  resources :friendships
  resources :plants
  resources :listings
  resources :users


  get '/authenticated_user', to: 'users#show'



  # get '/plants', to: 'plants#get_plants'

  # get '/account', to: 'users#show'
  # get '/account', to: 'sessions#show'  

  patch '/account/:id', to: 'users#update'
  delete '/account/:id', to: 'users#destroy'

  # delete '/user_plants/:id(.:format)', to: 'plants#destroy'
  # get 'user_plants'
  delete '/user_plants/:id', to: 'plants#destroy'
  patch '/user_plants/:id', to: 'plants#update'

  get '/listings/mylistings', to: 'listings#show'

  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
