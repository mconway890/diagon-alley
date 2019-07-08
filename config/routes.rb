Rails.application.routes.draw do
  root to: "pages#home"

  resources :stores, only: [:show, :index]
  resources :restaurants, only: [:show, :index]

  get '/map' => 'stores#map'
  get '/hours' => 'stores#hours'
  get '/about' => 'stores#about'
  get '/news' => 'stores#news'
  get '/deals' => 'stores#deals'
  get '/whats_new' => 'stores#whats_new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
