class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van
  has_many :reviews, dependent: :destroy # <- optional.

  # validates_associated :reviews

  # validates :start_date, presence: true
  # validates :end_date, presence: true, date: { after_or_equal_to: :start_date }

  # method to calculate total price


  # This method its the logic part of modifying the data of ONE single instance.
  # The class that takes care of this is the model.
  def calculate_total_price_booking
    # (End_date_booking - start_date booking) * price per day van
    result = (self.end_date - self.start_date).to_i * self.van.day_price
    self.total_price = result
    self
  end
end

# In the view to call method
# booking.calculate_total_price_booking
