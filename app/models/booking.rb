class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle

  enum status: { pending: 'pending', completed: 'completed', cancelled: 'cancelled', denied: 'denied' }
end
