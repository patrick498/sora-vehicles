class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.order(start_date: :asc).paginate(page: params[:page], per_page: 5)
    @pending = paginate_order("pending")
    @accepted = paginate_order("accepted")
    @cancelled = paginate_order("cancelled")
    @denied = paginate_order("denied")
    @done = paginate_order("done")
    current_user.owned_vehicles.each do |vehicle|
      @owner_bookings = vehicle.bookings.order(start_date: :asc).paginate(page: params[:page], per_page: 5)
    end
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
      redirect_to bookings_path
    else
      render 'vehicles/show', vehicle: @vehicle, booking: @booking, status: :unprocessable_entity
    end
  end

  def update
    booking = Booking.find(params[:id])
    booking.update(params.require(:booking).permit(:status))
    booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:vehicle, :user, :start_date, :end_date, :status, :total_price)
  end

  def paginate_order(status)
    Booking.where(user: current_user, status: status).order(start_date: :asc).paginate(page: params[:page], per_page: 5)
  end
end
