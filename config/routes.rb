# frozen_string_literal: true

Rails.application.routes.draw do
  resources :dvds
  resources :dvds, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # get '/dvds' => 'dvds#index'
  # get '/dvds/:id' => 'dvds#show'
  # delete '/dvds/:id' => 'dvds#destroy'
  # patch '/dvds/:id' => 'patients#update'
  # post '/dvds' => 'dvds#create'
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
