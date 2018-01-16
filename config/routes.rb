Rails.application.routes.draw do

  resources :users
  resources :tasks
  resources :houses do
    resources :groups
  end

  root to: 'home#index'
end
