Rails.application.routes.draw do
  get 'health_experts/index_nutrition'
  get 'health_experts/index_doctors'
  get 'health_experts/index_fitness'
  devise_for :users

  get 'diet_plans/index'
  get 'diet_plans/show'
  get 'welcome/index'

  get '/calculate_bmi_form', to: 'bmi#calculate_bmi_form', as: 'calculate_bmi_form'

  get '/calculate_bmi', to: 'bmi#calculate_bmi'
  post '/calculate_bmi', to: 'bmi#calculate_bmi'
  get '/result', to: 'bmi#result', as: 'result'
  get '/reset_bmi', to: 'bmi#reset_bmi', as: 'reset_bmi'
  get 'personalized_diet_plans', to: 'diet_plans#personalized', as: 'personalized_diet_plans'
  resources :diet_plans
  resources :recipes
  resources :health_experts, only: [:index]
  # config/routes.rb


  get '/nutrition_experts', to: 'health_experts#index_nutrition', as: 'nutrition_experts'
  get '/doctors', to: 'health_experts#index_doctors', as: 'doctors'
  get '/fitness_instructors', to: 'health_experts#index_fitness', as: 'fitness_instructors'
  resources :surveys
  resources :entries
  
  root to: "welcome#index"
  resources :diet_plans, only: [:index, :show]
end
