Rails.application.routes.draw do
  resources :stores, only: [:show, :index]

  get '/dining' => 'stores#dining'
  get '/map' => 'stores#map'

  root 'stores#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
