Rails.application.routes.draw do
  devise_for :users
  resources :houses do
    resources :groups do
      resources :tasks
    end
  end

  root to: 'home#index'
end
