class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @pending = Booking.where(user: current_user, status: "pending")
    @accepted = Booking.where(user: current_user, status: "accepted")
    @cancelled = Booking.where(user: current_user, status: "cancelled")
    @denied = Booking.where(user: current_user, status: "denied")
    @done = Booking.where(user: current_user, status: "done")
  end
end
