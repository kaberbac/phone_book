class User < ActiveRecord::Base
  attr_accessible :name
  has_many :phones, dependent: :destroy # user’s phones are destroyed when we delete the user.
  has_many :posts, dependent: :destroy
  has_many :comments

  validates :name, presence: true, length: {in: 2..50}

end
