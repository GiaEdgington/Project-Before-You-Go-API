Rails.application.routes.draw do

  post '/login', to: 'auth#create'
  post '/signup', to: 'users#create'
  get '/homepage', to: 'users#homepage'




  get '/persist', to: 'tokens#persist'

  resources :books
  resources :destinations
  resources :users
  resources :tokens, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
