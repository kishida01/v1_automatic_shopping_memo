class CreateNotifications < ActiveRecord::Migration[7.2]
  def change
    create_table :notifications do |t|
      t.datetime :sent_at, null: false
      t.integer :read, null: false, default: 0

      t.timestamps
    end
  end
end
