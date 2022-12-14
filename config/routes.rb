Rails.application.routes.draw do
  resource :session
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'workouts#index'

  
  get 'workouts/random', to: 'workouts#random'
  get 'workouts/public', to: 'workouts#public'
  get 'about', to: 'about#index'

  get 'sessions/test', to: 'sessions#test'

  resources :workouts do
    resources :attempts
  end

  get 'workouts/random', to: 'workouts#random'
  # Defines the root path route ("/")
  # root "articles#index"
end
