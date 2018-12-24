Rails.application.routes.draw do
  resources :products
  resources :premium_memberships, only: [:create]
  devise_for :users
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
