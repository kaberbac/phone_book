class User < ActiveRecord::Base
  attr_accessible :name
  has_many :phones
  has_many :posts

  validates :name, presence: true, length: {in: 2..50}

end
