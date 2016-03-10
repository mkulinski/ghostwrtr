class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :cart_id
      t.integer :lyric_id
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
