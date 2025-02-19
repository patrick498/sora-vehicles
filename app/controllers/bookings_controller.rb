class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.paginate(page: params[:page], per_page: 5)
    @pending = Booking.where(user: current_user, status: "pending").paginate(page: params[:page], per_page: 5)
    @accepted = Booking.where(user: current_user, status: "accepted").paginate(page: params[:page], per_page: 5)
    @cancelled = Booking.where(user: current_user, status: "cancelled").paginate(page: params[:page], per_page: 5)
    @denied = Booking.where(user: current_user, status: "denied").paginate(page: params[:page], per_page: 5)
    @done = Booking.where(user: current_user, status: "done").paginate(page: params[:page], per_page: 5)
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
      redirect_to bookings_path(@vehicle)
    else
      render 'vehicles/show', vehicle: @vehicle, booking: @booking, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:vehicle, :user, :start_date, :end_date, :status, :total_price)
  end
end
