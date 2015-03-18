class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.integer :play_order, null: false, limit: 3
      t.integer :list_id, null: false
      t.integer :item_id, null: false
      t.timestamps null: false
    end
  end
end