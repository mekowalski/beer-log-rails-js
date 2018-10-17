Rails.application.routes.draw do
  get '/home', to: 'beers#home' #this is kind of nice and i can use home buttom to get to index but not in love

  resources :companies do
    resources :beer_styles # <--- this one doesn't need a direct action, not sure why this is the case
    resources :beers, to: 'companies#beer' # <---this needs to direct to the correct action
  end

  resources :beer_styles do
    resources :beers
  end

  resources :beers
  patch '/beers/:id', to: 'beer#update'
end
