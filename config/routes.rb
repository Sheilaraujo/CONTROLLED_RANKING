Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :schedules, only: [:index, :new, :create, :destroy, :show]
  resources :games, only: [:index, :new, :create, :show]
  resources :teams, only: [:index, :new, :create, :show]
  resources :users, only: [:show]
end
