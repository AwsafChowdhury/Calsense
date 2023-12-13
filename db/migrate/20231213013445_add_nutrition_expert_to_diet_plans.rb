
class AddNutritionExpertToDietPlans < ActiveRecord::Migration[6.0]
  def change
    add_reference :diet_plans, :nutrition_expert, foreign_key: true, default: 1
    # Replace `1` with the ID of the default nutrition expert
  end
end
