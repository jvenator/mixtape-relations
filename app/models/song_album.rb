class SongAlbum < ActiveRecord::Base
  attr_accessible :album_id, :song_id

  belongs_to :song, :album
end
