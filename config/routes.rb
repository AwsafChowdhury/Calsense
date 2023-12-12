Rails.application.routes.draw do
  devise_for :users
  get 'diet_plans/index'
  get 'diet_plans/show'
  get 'welcome/index'

  resources :surveys # This line is enough to generate all necessary routes for surveys

  resources :entries
  root to: "welcome#index"
  resources :diet_plans, only: [:index, :show]
end
