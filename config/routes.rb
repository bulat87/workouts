Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :workouts do
    resources :exercises
  end

  authenticated :user do
    root 'workouts#index', as: "authenticated_root"
  end

  root 'welcome#index'

#API
  namespace :api do
    resources :workouts
  end

end
