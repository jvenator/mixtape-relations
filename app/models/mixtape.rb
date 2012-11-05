class Mixtape < ActiveRecord::Base
  attr_accessible :name, :owner_id

  belongs_to :user
end
