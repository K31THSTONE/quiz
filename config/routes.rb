Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  root 'static_pages#home'
  get  '/help',           to: 'static_pages#help'
  get  '/about',          to: 'static_pages#about'
  get  '/contact',        to: 'static_pages#contact'
  get  '/signup',         to: 'users#new'
  post '/signup',         to: 'users#create'
  get  '/login',          to: 'sessions#new'
  post '/login',          to: 'sessions#create'
  delete '/logout',       to: 'sessions#destroy'
  get  '/createQuiz',     to: 'quizzes#new'
  post '/createQuiz',     to: 'quizzes#create'
  get  '/takeQuiz',       to: 'quizzes#take'
  get  '/createQuestion', to: 'questions#new'
  post '/createQuestion', to: 'question#create'
  get  '/createAnswer',   to: 'answer#new'
  post '/createAnswer',   to: 'answer#create'
  get  '/takeQuiz',       to: 'quiz#take'
  
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :quizzes
  resources :questions
  resources :answers
  
end