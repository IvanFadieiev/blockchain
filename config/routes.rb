Rails.application.routes.draw do
  devise_for :users

  root to: 'users#index'

  resources :users, only: %i(index)
  resources :transactions, only: %i(create)
end
