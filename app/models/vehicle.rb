class Vehicle < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many_attached :photos

  validates :vehicle_type, :brand, :model, :description, :location, :price_day, presence: true
  enum vehicle_type: { airplane: 'airplane', car: 'car', boat: 'boat', motorcycle: 'motorcycle' }
  validates :vehicle_type, inclusion: { in: vehicle_types.keys }
  validates :description, length: { in: 15..150 }

end
