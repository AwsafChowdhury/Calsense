class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :meal_type
      t.integer :calories
      t.integer :carbohydrates
      t.integer :protiens
      t.integer :fats

      t.timestamps
    end
  end
end
