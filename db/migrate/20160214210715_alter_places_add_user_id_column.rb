class AlterPlacesAddUserIdColumn < ActiveRecord::Migration
  def change
    add_column :lyrics, :user_id, :integer
    add_column :lyrics, :genre, :string
    
    add_index :lyrics, :user_id
  end
end
