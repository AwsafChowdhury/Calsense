class AddMealCaloriesToDietPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :diet_plans, :breakfast_calories, :integer
    add_column :diet_plans, :lunch_calories, :integer
    add_column :diet_plans, :snacks_calories, :integer
    add_column :diet_plans, :dinner_calories, :integer
    
  end
end
