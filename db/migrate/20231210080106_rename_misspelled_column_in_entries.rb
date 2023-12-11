class RenameMisspelledColumnInEntries < ActiveRecord::Migration[6.0] # Adjust version if needed
  def change
    rename_column :entries, :protiens, :proteins
  end
end

