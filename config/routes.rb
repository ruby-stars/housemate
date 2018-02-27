Rails.application.routes.draw do

  resources :users
  resources :houses do
    resources :groups do
      resources :tasks
    end
  end

  root to: 'home#index'
end
