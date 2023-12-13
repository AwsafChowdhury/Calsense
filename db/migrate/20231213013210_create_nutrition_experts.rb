class CreateNutritionExperts < ActiveRecord::Migration[7.0]
  def change
    create_table :nutrition_experts do |t|
      t.string :name
      t.string :expertise

      t.timestamps
    end
  end
end
