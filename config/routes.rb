Rails.application.routes.draw do

  devise_for :users
  root 'users#index'

  resources :users
  resources :organizations
  resources :donations
  resources :subscriptions

end
