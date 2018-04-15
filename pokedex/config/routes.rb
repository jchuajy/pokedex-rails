Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #setting the views --> pokemons --> index to be the root
  root 'pokemons#index', as: 'home'

  #instead of creating routes manually, use resources to auto generate CRUD routes
  #points to the pokemons controller. use rake routes to see the auto generated routes
  resources :pokemons
end
