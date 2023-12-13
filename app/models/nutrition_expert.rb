class NutritionExpert < ApplicationRecord
    has_many :diet_plans
    has_secure_password # This requires 'bcrypt' gem in your Gemfile
  end