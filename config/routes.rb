Rails.application.routes.draw do
  resources :films
  get 'films/show'
  get 'films/title'
  get 'films/synopsis'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
