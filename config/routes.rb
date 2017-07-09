Rails.application.routes.draw do
  resources :quizzes
  resources :userso
  root 'application#hello'
end