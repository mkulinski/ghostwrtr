class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.integer :lyric_id

      t.timestamps null: false
    end
  end
end
