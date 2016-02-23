Rails.application.routes.draw do

  get '/' => 'users#index'
  get '/users' => 'users#index', as: :users
  post '/users' => 'users#create'
  get '/users/new' => 'users#new', as: :new_user
  get '/users/:id/edit' => 'users#edit', as: :edit_user
  get '/users/:id' => 'users#show', as: :user
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  get '/logout' => 'sessions#destroy', as: :logout
  post '/sessions' => 'sessions#create'
  get '/sessions/new' => 'sessions#new', as: :new_session

end
