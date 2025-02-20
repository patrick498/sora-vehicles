class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.order(start_date: :asc).paginate(page: params[:page], per_page: 5)
    @pending = paginate_order("pending")
    @accepted = paginate_order("accepted")
    @cancelled = paginate_order("cancelled")
    @denied = paginate_order("denied")
    @done = paginate_order("done")
    @owner_bookings = current_user.owner_bookings.order(start_date: :asc).paginate(page: params[:page], per_page: 5)
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
      flash[:success] = 'The booking request has been made.'
      redirect_to bookings_path
    else
      flash[:danger] = @booking.errors.full_messages.to_sentence
      render 'vehicles/show', vehicle: @vehicle, booking: @booking, status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    respond_to do |format|
      format.html {  redirect_to bookings_path(current_user) }
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("owner",
          partial: 'bookings/owner_booking',
          locals: {
            bookings: current_user.owner_bookings.order(start_date: :asc).paginate(page: params[:page], per_page: 5),
            display_none: false
          }
        )
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:vehicle, :user, :start_date, :end_date, :status, :total_price)
  end

  def paginate_order(status)
    Booking.where(user: current_user, status: status).order(start_date: :asc).paginate(page: params[:page], per_page: 5)
  end
end
