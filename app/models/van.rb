class Van < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings # <- for van reviews


  validates :brand, presence: true, uniqueness: true, length: { minimum: 2 }
  validates :model, presence: true, uniqueness: true, length: { minimum: 3 }
end
