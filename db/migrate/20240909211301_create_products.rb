class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.integer :default_quantity, null: false, default: 0
      t.string :unit, null: false

      t.timestamps
    end
  end
end
