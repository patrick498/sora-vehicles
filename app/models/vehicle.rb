class Vehicle < ApplicationRecord
  has_many :bookings, dependent: :destroy
<<<<<<< HEAD
  belongs_to :user
  has_many_attached :images
=======
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many_attached :photos
>>>>>>> 80ef0fb (merge conflict)

  validates :vehicle_type, :brand, :model, :description, :location, :price_day, presence: true
  enum vehicle_type: { airplane: 'airplane', car: 'car', boat: 'boat', motorcycle: 'motorcycle' }
  validates :vehicle_type, inclusion: { in: vehicle_types.keys }
<<<<<<< HEAD
  validates :description, length: { in: 15..200 }
=======
  validates :description, length: { in: 15..150 }
>>>>>>> 80ef0fb (merge conflict)

end
