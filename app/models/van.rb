class Van < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings # <- for van reviews

  maximum_description = 1000
  minimum_description = 100

  validates :brand, presence: true, length: { minimum: 2 }
  validates :model, presence: true, length: { minimum: 3 }
  validates :capacity, presence: true, numericality: { maximum: 5 }
  validates :day_price, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :description, length: { minimum: minimum_description, maximum: maximum_description,
    too_long: "#{maximum_description} characters is the maximum allowed",
    too_short: "Please enter a description of at least #{minimum_description} characters long" }
end
