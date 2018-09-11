Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/about' => 'beers#about'
  get '/beer_styles_home' => 'beer_styles#beer_styles_home'
  #i don't like the multiple words with routing & actions will make it better & nicer to look at eventually
  #this does work successfully in browser

  resources :beer_styles, only: [:index]

  resources :beers, only: [:index, :show, :new, :create, :edit, :update]
  patch '/beers/:id', to: 'beer#update'

end
