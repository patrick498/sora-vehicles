class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :booked_vehicles, through: :bookings, source: :vehicle

  has_many :owned_vehicles, class_name: "Vehicle", foreign_key: "owner_id", dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
