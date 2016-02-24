Rails.application.routes.draw do

  root 'users#index'
  resources :users, :places, :dives

  get '/logout' => 'sessions#destroy', as: :logout
  post '/sessions' => 'sessions#create'
  get '/sessions/new' => 'sessions#new', as: :new_session

end
