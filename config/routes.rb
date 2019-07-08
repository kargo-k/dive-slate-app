Rails.application.routes.draw do
  resources :dive_equipments
  resources :dives
  resources :equipment
  resources :users
  resources :divesites
  resources :diveshops
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
