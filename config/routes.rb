Rails.application.routes.draw do
  resources :users
  resource :session, only: [:new, :create, :destroy]

  root "homepage#show"
  get "signin" => "sessions#new"
  post "signin" => "sessions#create"
  delete "signout" => "sessions#destroy"

end
