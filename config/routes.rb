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
  get 'users/:id/my_dashboard', to: 'users#dashboard', as: 'user_dashboard'
end
