Rails.application.routes.draw do
  root 'home#index'

  resources :users do
    resources :profile
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :houses do
    resources :comments
  end

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'my_houses', to: 'houses#mine', as: 'mine'

  get 'profile/index'
end
