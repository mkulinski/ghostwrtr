class RemoveGenreNames < ActiveRecord::Migration
  def change
    remove_column :genres, :hip_hop, :string
    remove_column :genres, :country, :string
    add_column :genres, :name, :string
  end
end
