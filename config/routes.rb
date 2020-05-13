# frozen_string_literal: true

Rails.application.routes.draw do
  resources :todos, except: %i[new edit]
  resources :notes, except: %i[new edit]
  # RESTful routes

# Todo's routes
  post '/todos' => 'todos#create'
  get '/todos' => 'todos#index'
  get '/todos/:id' => 'todos#show'
  delete '/todos/:id' => 'todos#destroy'
  patch '/todos/id' => 'todos#update'
# Note's routes
  post '/notes' => 'notes#create'
  get '/notes' => 'notes#index'
  get '/notes/:id' => 'notes#show'
  delete '/notes/:id' => 'notes#destroy'
  patch '/notes/id' => 'notes#update'
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
