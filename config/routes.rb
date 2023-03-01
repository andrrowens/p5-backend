Rails.application.routes.draw do
  resources :friendships
  resources :plants
  resources :listings
  resources :users


  get '/authenticated_user', to: 'users#show'

  # get '/profile', to: 'sessions#show' 


  get '/profile', to: 'users#show' 

  post '/signup', to: 'users#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
