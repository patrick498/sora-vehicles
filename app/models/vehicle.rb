class Vehicle < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :owner, class_name: "User", foreign_key: "owner_id"

  validates :type, :brand, :model, :description, :location, :price_day, presence: true
  enum type: { airplane: 'airplane', car: 'car', boat: 'boat', motorcycle: 'motorcycle' }
  validates :type, inclusion: { in: types.keys }
  validates :description, length: { in: 15..150 }

end
