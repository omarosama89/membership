Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  resources :premium_memberships, only: [:create]
  devise_for :users
  namespace :admin do
    resources :products

  end
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
