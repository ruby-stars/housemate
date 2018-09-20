Rails.application.routes.draw do
  devise_for :users
  resources :houses do
    resources :groups do
      resources :tasks
    end
  end

  root to: 'home#index'

  get 'users/:id', to: 'users#show', as: 'user'
  get 'users', to: 'users#index', as: 'users'
end
