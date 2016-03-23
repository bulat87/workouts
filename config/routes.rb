Rails.application.routes.draw do
  get 'welcome/index'

  resources :workouts do
  	resources :exercises
  end
  root 'welcome#index'
end
