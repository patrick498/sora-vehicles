class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
    @pending = Booking.where(user: current_user, status: "pending")
    @accepted = Booking.where(user: current_user, status: "accepted")
    @cancelled = Booking.where(user: current_user, status: "cancelled")
    @denied = Booking.where(user: current_user, status: "denied")
    @done = Booking.where(user: current_user, status: "done")
  end

  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @booking = Booking.new(booking_params)
    total_price = (@booking.end_date - @booking.start_date) * @vehicle.price_day
    @booking.total_price = total_price
    @booking.vehicle = @vehicle
    @booking.user = current_user
    @booking.status = 'pending'
     if @booking.save
      flash[:notice]  = 'Your booking request has been made.'
      redirect_to bookings_path
    else
      render 'vehicles/show', vehicle: @vehicle, booking: @booking, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:vehicle, :user, :start_date, :end_date, :status, :total_price)
  end
end
