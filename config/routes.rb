Rails.application.routes.draw do
  get 'diet_plans/index'
  get 'diet_plans/show'
  get 'surveys/new'
  get 'surveys/create'
  get 'welcome/index'
  # config/routes.rb

  resources :surveys
  resources :surveys, only: [:new, :create, :show]

  resources :entries
  root to: "welcome#index" 
 
  # Assuming the welcome page is controlled by WelcomeController#index

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
