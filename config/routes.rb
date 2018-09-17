Rails.application.routes.draw do
  devise_for :users
  resources :houses do
    resources :groups do
      resources :tasks
    end
  end

  root to: 'home#index'

  get :send_houses_mail, to: 'houses#send_houses_mail', as: :send_houses_mail
end
