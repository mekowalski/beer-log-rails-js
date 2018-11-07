Rails.application.routes.draw do
  root 'beers#index' #this is kind of nice and i can use home buttom to get to index but not in love
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/auth/google/callback', to: 'sessions#create'

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
