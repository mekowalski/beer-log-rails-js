Rails.application.routes.draw do
  get '/home', to: 'beers#home' #this is kind of nice and i can use home buttom to get to index but not in love

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
  # i don't need this because i actually already have an index of the beers associated with the beerstyle

  resources :beers
  patch '/beers/:id', to: 'beer#update'
end
