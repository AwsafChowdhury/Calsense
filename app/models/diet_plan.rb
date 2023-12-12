class DietPlan < ApplicationRecord
    validates :name, :category, presence: true
    validates :recommended_calories, numericality: { only_integer: true }
  
    # Add the new fields with appropriate validations
    validates :breakfast_calories, :lunch_calories, :snacks_calories, :dinner_calories,
              :carbohydrates, :proteins, :fats, presence: true
  end
  
