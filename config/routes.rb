Rails.application.routes.draw do
  get '/about' => 'beers#about'

  resources :companies

  resources :beer_styles, only: [:index]

  resources :beers, only: [:index, :show, :new, :create, :edit, :update]
  patch '/beers/:id', to: 'beer#update'

end
