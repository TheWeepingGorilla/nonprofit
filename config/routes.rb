Rails.application.routes.draw do

  devise_for :users
  root 'user#index'

  resources :users
  resources :organizations
  resources :donations
  resources :subscriptions

end
