class Album < ActiveRecord::Base
  attr_accessible :name

  has_many :song_albums
  has_many :songs, through: :song_albums
end
