class AddGenreIdToLyrics < ActiveRecord::Migration
  def change
    remove_column :genres, :lyric_id, :integer
    remove_column :lyrics, :genre, :string
    add_column :lyrics, :genre_id, :integer
  end
end
