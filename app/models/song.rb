class Song < ActiveRecord::Base
  attr_accessible :name

  belongs_to :artist

  has_many :genre_songs
  has_many :songs, through: :genre_songs

  has_many :song_albums
  has_many :albums, through: :song_albums
end
