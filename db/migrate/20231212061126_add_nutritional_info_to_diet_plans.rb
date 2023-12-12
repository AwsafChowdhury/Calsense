class AddNutritionalInfoToDietPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :diet_plans, :carbohydrates, :integer
    add_column :diet_plans, :proteins, :integer
    add_column :diet_plans, :fats, :integer
  end
end
