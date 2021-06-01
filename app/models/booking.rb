class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van
  has_many :reviews, dependent: :destroy # <- optional.

  # validates_associated :reviews

  # validates :start_date, presence: true
  # validates :end_date, presence: true, date: { after_or_equal_to: :start_date }
end

