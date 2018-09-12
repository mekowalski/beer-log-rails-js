Rails.application.routes.draw do
  get '/about' => 'beers#about'

  resources :companies

  resources :beer_styles

  resources :beers
  patch '/beers/:id', to: 'beer#update'

end
