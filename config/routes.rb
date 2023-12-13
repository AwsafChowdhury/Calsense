Rails.application.routes.draw do
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


  resources :surveys
  resources :entries
  
  root to: "welcome#index"
  resources :diet_plans, only: [:index, :show]
end
