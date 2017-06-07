class Post < ActiveRecord::Base
  attr_accessible :title, :user_id
  belongs_to :user
  has_many :comments, dependent: :destroy

  default_scope -> { order(created_at: :desc) }

  validates :title, presence: true
  validates :user_id, presence: true
end
