class CreateSurveys < ActiveRecord::Migration[7.0]
  def change
    create_table :surveys do |t|
      t.integer :age
      t.float :weight
      t.float :height
      t.string :gender

      t.timestamps
    end
  end
end
