class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle

  validates :total_price, :start_date, :end_date, :status, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
  validates :start_date, comparison: { greater_than: Date.today - 1 }
  enum status: { pending: 'pending', accepted: 'accepted', denied: 'denied', cancelled: 'cancelled', done: 'done' }
  validates :status, inclusion: { in: Booking.statuses.keys }
  # validate :no_overlapping_bookings

  def no_overlapping_bookings
    overlapping_bookings = Booking.where(vehicle: vehicle).where('start_date < ? AND end_date > ?', end_date, start_date)
    if overlapping_bookings.exists?
      errors.add(:base, "These dates are already booked. Please select different dates.")
    end
  end
end
