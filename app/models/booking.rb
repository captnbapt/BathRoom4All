class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :toilet
  has_many :reviews

  validate :end_date_is_after_start_date?
  #validates :from_date, :to_date, presence: true

  private

  def end_date_is_after_start_date?
    if from_date.present? && to_date.present? && to_date < from_date
      self.errors[:base] << "Check-out cannot be before Check-in"
    end
  end
end
