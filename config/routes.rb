Rails.application.routes.draw do
  get '/home', to: 'beers#home' #this is kind of nice and i can use home buttom to get to index but not in love

  resources :companies
  # get 'companies/:id/beer_styles'
  # get 'companies/:id/beer_styles/id'
  # in companies con i need to create the actions that would nest beerstyle index and show under company

  resources :beer_styles

  resources :beers
  patch '/beers/:id', to: 'beer#update'
end
