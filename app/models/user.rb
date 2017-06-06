class User < ActiveRecord::Base
  attr_accessible :name
  has_many :phones

  validates :name, presence: true, length: {in: 2..50}

end
