class User < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true, length: {in: 2..50}
end
