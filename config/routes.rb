Rails.application.routes.draw do
  resources :tasks
  resources :groups
  resources :houses
  resources :users
  get '/home', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
