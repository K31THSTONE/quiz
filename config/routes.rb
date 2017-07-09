Rails.application.routes.draw do
  resources :quizzes
  resources :users
  root 'users#index'
end