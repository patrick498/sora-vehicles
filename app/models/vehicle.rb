class Vehicle < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many_attached :images

  validates :vehicle_type, :brand, :model, :description, :location, :price_day, presence: true
  enum vehicle_type: { airplane: 'airplane', car: 'car', boat: 'boat', motorcycle: 'motorcycle' }
  validates :vehicle_type, inclusion: { in: vehicle_types.keys }
  validates :price_day, numericality: true
  validates :description, length: { in: 15..200 }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
