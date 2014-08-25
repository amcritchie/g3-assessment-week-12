Rails.application.routes.draw do

  get '/' => "homepage#show"

  resources :movies

  resources :users
  resource :session, only: [:new, :create, :destroy]

  root "homepage#show"
  get "signin" => "sessions#new"
  post "signin" => "sessions#create"
  delete "signout" => "sessions#destroy"

  get '/' => "homepage#show"

end
