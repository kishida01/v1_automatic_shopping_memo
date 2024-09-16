class CreateInventories < ActiveRecord::Migration[7.2]
  def change
    create_table :inventories do |t|
      t.integer :family_size, null: false, default: 1
      t.integer :estimated_consumption_rate, null: false, default: 0

      t.timestamps
    end
  end
end
