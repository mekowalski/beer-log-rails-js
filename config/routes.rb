Rails.application.routes.draw do
  get '/home', to: 'beers#home' #this is kind of nice and i can use home buttom to get to index but not in love

  resources :companies

  resources :beer_styles do
    # nested resource for beers
    resources :beers
    patch '/beers/:id', to: 'beer#update'
  end
  # adding do...end to pass a block of its nested routes
  # can still do to nested resources what's done with non-nested resources like limit to only certain actions

end
