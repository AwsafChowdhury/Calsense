class AddPasswordDigestToNutritionExperts < ActiveRecord::Migration[7.0]
  def change
    add_column :nutrition_experts, :password_digest, :string
  end
end
