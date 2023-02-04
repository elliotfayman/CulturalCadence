class CreateMusics < ActiveRecord::Migration[7.0]
  def change
    create_table :musics do |t|
      t.string :song_name
      t.string :artist
      t.integer :song_popularity
      t.string :decade
      t.string :genre
      t.integer :points

      t.timestamps
    end
  end
end
