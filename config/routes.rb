Rails.application.routes.draw do
  get '/home', to: 'beers#home' #this is kind of nice and i can use home buttom to get to index but not in love

  resources :companies

  resources :beer_styles
  get 'beerstyles/:id/beers'
  get 'beerstyles/:id/beers/:id'

  resources :beers
  patch '/beers/:id', to: 'beer#update'

end
