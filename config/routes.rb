Rails.application.routes.draw do
  devise_for :users
  # Ensure you have defined root_url to *something* in your config/routes.rb.
  resources :films
  get 'films/show'
  get 'films/title'
  get 'films/synopsis'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'films#index'
end
