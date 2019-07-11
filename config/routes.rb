Rails.application.routes.draw do
  root 'auths#login'
  resources :dive_marineanimals
  resources :marineanimals
  resources :dive_equipments
  resources :equipment
  resources :users
  resources :diveshops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/divesites/sort',       to: 'divesites#sort', as: 'sorted_divesites'
  get '/divesites/:id',         to: 'divesites#show', as: 'divesite'
  get '/divesites',             to: 'divesites#index'
  # resources :divesites

  get '/users/new',             to: 'users#new', as: 'signup'
  get '/signup',                to: 'users#new'
  post '/signup',               to: 'users#create'
  get '/users',                 to: 'users#index', as: 'all_users'
  get '/users/:id/delete',      to: 'users#confirm', as: 'confirm_delete'

  get '/users/:id/dives/new',   to: 'dives#new', as: 'dives'
  get '/users/:id/dives/',      to: 'dives#index', as: 'divers_dives'
  post '/users/:id/dives/:id/', to: 'dives#create'
  get '/dives/:id/',            to: 'dives#show', as: 'show_dive'
  delete '/dives/:id/',         to: 'dives#destroy', as: 'delete_dive'

  get    '/login',              to: 'auths#login'
  post   '/login',              to: 'auths#create'
  delete '/login',              to: 'auths#destroy', as: 'logout'

end
