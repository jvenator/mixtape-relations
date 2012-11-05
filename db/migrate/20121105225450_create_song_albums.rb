class CreateSongAlbums < ActiveRecord::Migration
  def change
    create_table :song_albums do |t|
      t.integer :song_id
      t.integer :album_id

      t.timestamps
    end
  end
end
