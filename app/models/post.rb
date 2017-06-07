class Post < ActiveRecord::Base
  attr_accessible :title, :user_id
  belongs_to :user
  validates :title, presence: true
  validates :user_id, presence: true
end
