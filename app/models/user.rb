class User < ActiveRecord::Base
  attr_accessible :name

  has_many :mixtapes, as: :owner_id
end
