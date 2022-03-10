class Toilet < ApplicationRecord
  belongs_to :user
  has_many :bookings

  #validates :description, :address, :toilets_option, :shower_option, :baby_changing_table_option, presence: true
end
