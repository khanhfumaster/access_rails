Rails.application.routes.draw do
  resources :stores do
    resources :menus
    resources :beacons
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users

  get 'api/v1/beacon/get' => 'api/v1/beacon#get'
end
