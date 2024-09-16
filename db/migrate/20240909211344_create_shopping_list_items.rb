class CreateShoppingListItems < ActiveRecord::Migration[7.2]
  def change
    create_table :shopping_list_items do |t|
      t.integer :quantity, null: false, default: 0
      t.integer :checked, null: false, default: 0

      t.timestamps
    end
  end
end
