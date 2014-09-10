Rails.application.routes.draw do

  root 'user#index'

  resources :users
  resources :organizations
  resources :donations
  resources :subscriptions

end
