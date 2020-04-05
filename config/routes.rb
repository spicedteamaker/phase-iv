Rails.application.routes.draw do

  resources :accounts
  resources :rentals
  devise_for :users, controllers: { sessions: 'users/sessions' }

  # Ensure you have defined root_url to *something* in your config/routes.rb.
  resources :films
  get 'films/show'
  get 'films/title'
  get 'films/synopsis'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'films#index'
end
