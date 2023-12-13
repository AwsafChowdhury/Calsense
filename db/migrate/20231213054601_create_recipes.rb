class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.string :meal_category
      t.text :instructions

      t.timestamps
    end
  end
end
