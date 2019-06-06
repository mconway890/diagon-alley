Rails.application.routes.draw do
  resources :stores, only: [:show, :index]

  root 'stores#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
