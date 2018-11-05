Rails.application.routes.draw do
  root 'application#home' #this is kind of nice and i can use home buttom to get to index but not in love
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # post '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]

  resources :companies do
    resources :beer_styles
    resources :beers
  end
  get 'companies/:id/beers/:id', to: 'companies#beer'

  get 'beer_styles/:id/beers/', to: 'beer_styles#beer_index'
  resources :beer_styles do
    resources :beers
  end
  get 'beer_styles/:id/beers/:id', to: 'beer_styles#beer'

  resources :beers
  patch '/beers/:id', to: 'beer#update'
end
