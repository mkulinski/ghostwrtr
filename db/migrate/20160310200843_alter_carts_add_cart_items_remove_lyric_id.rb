class AlterCartsAddCartItemsRemoveLyricId < ActiveRecord::Migration
  def change
    add_column :carts, :cart_item_id, :integer
    remove_column :carts, :lyric_id, :integer
  end
end
