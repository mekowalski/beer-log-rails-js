Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/about' => 'beers#about'

  resources :beers, only: [:index, :show, :new, :create, :edit, :update]
  patch '/beers/:id', to: 'beer#update'

end
