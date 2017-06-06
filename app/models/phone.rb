class Phone < ActiveRecord::Base
  attr_accessible :phone_number
  validates :phone_number, presence: true
end
