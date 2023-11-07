Rails.application.routes.draw do
  resources :employees
  resources :departments
  resources :companies
  resources :roles
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'


  # Defines the root path route ("/")
  root "departments#index"
  resources :users
end
