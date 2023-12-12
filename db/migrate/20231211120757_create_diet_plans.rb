class CreateDietPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :diet_plans do |t|
      t.string :name
      t.string :category
      t.integer :recommended_calories

      t.timestamps
    end
  end
end
