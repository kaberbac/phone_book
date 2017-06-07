class Comment < ActiveRecord::Base
  attr_accessible :body, :post_id, :user_id
  belongs_to :user
  belongs_to :post
  validates :body, presence: true
  validates :post_id, presence: true
end
