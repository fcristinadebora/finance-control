Rails.application.routes.draw do
  get 'dashboard/index'
  resources :movements
  resources :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
