class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :vans

  validates :first_name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :last_name, presence: true, uniqueness: true, length: { minimum: 3 }
end
