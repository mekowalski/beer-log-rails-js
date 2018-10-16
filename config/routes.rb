Rails.application.routes.draw do
  get '/home', to: 'beers#home' #this is kind of nice and i can use home buttom to get to index but not in love

  resources :companies do
    resources :beer_styles
    resources :beers
  end
  # get 'companies/:id/beer_styles'
  # get 'companies/:id/beer_styles/id'
  # in companies con i need to create the actions that would nest beerstyle index and show under company

  resources :beer_styles
  get 'beer_styles/:id/beers', to: 'beer_styles#beers_index'
  get 'beer_styles/:id/beers/:id', to: 'beer_styles#beer'

  resources :beers
  patch '/beers/:id', to: 'beer#update'
end
