class AlterLyricsAddPrice < ActiveRecord::Migration
  def change
    add_column :lyrics, :price, :decimal, precision: 6, scale: 2
  end
end
