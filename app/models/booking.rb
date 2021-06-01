class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :van
  has_many :reviews, dependent: :destroy # <- optional.
end
