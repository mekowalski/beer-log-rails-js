Rails.application.routes.draw do
  get '/beers', to: 'application#about' #this is kind of nice and i can use home buttom to get to index but not in love

  resources :companies

  resources :beer_styles

  resources :beers
  patch '/beers/:id', to: 'beer#update'

end
