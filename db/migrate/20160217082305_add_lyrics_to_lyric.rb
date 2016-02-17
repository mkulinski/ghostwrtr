class AddLyricsToLyric < ActiveRecord::Migration
  def change
    add_column :lyrics, :song_lyrics, :text
  end
end
