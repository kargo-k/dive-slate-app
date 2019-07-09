Rails.application.routes.draw do
  resources :dive_equipments
  resources :dives
  resources :equipment
  resources :users
  resources :divesites
  resources :diveshops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/:id/dives/new', to: 'dives#new'

  get '/users/:id/dives', to: 'dives#index', as: 'divers_dives'
  
  post '/users/:id/dives/:id', to: 'dives#create'
  
  get '/users/:id/dives/:id', to: 'dives#show'

end
