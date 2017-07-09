Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'

  resources :quizzes
  resources :userso
  root 'application#hello'
end