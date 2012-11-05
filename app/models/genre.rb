class Genre < ActiveRecord::Base
  attr_accessible :name

  has_many :genre_songs
  has_many :songs, through: :genre_songs


end
