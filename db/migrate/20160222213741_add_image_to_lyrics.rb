class AddImageToLyrics < ActiveRecord::Migration
  def change
    add_column :lyrics, :image, :string
  end
end
