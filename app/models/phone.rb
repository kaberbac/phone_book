class Phone < ActiveRecord::Base
  attr_accessible :phone_number, :user_id
  belongs_to :user
  validates :phone_number, presence: true
  validates :user_id, presence: true

  # VALID_PHONE_NUMBER_REGEX = /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
  # validates :phone_number, presence: true, length: { maximum: 50 },
  #           format: { with: VALID_PHONE_NUMBER_REGEX }
end
