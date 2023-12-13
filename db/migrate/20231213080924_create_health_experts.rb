class CreateHealthExperts < ActiveRecord::Migration[7.0]
  def change
    create_table :health_experts do |t|
      t.string :name
      t.string :contact_info
      t.string :organization
      t.string :address
      t.string :category

      t.timestamps
    end
  end
end
