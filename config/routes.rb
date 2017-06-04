Rails.application.routes.draw do
  get 'resumes/index'

  get 'resumes/new'

  get 'resumes/create'

  get 'resumes/destroy'

  resources :resumes, only: [:index, :new, :create, :destroy]

  resources :education_backgrounds
  resources :sibling_backgrounds
  resources :family_backgrounds
  resources :personal_backgrounds
  get 'sessions/new'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  root 'sessions#new'
end
