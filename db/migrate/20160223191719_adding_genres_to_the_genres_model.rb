class AddingGenresToTheGenresModel < ActiveRecord::Migration
  def change
    add_column :genres, :hip_hop, :string
    add_column :genres, :country, :string
  end
end
