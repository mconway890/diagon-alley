Rails.application.routes.draw do
  resources :stores, only: [:show, :index]
  resources :restaurants, only: [:show, :index]

  get '/map' => 'stores#map'
  get '/hours' => 'stores#hours'

  root 'stores#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
