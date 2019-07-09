Rails.application.routes.draw do

  resources :dive_equipments
  resources :dives
  resources :equipment
  resources :users
  resources :divesites
  resources :diveshops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/:id/dives', to: 'dives#index', as: 'all_dives'
  get '/users/:id/dives/:id', to: 'dives#show', as: 'show_dive'

  get    '/login',   to: 'auths#new'
  post   '/login',   to: 'auths#create'
  delete '/logout',  to: 'auths#destroy'

end
