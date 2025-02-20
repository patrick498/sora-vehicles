class VehiclesController < ApplicationController
  # Skip authentication for the show action
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    @vehicles = Vehicle.all
    @max_price = @vehicles.maximum(:price_day).to_i
    @min_price = @vehicles.minimum(:price_day).to_i
    @current_min_price = @min_price
    @current_max_price = @max_price

    filters = {
      vehicle_type: params[:vehicle_type],
      brand: params[:brand],
      model: params[:model],
      location: params[:location]
    }.compact_blank # Removes nil or empty values

    if filters.present?
      query = []
      values = {}
      filters.each do |key, value|
        query << "#{key} ILIKE :#{key}"
        values[key] = "%#{value}%" # Adds wildcard for partial match
      end
      @vehicles = @vehicles.where(query.join(" AND "), values)
    end

    if params[:min_price].present?
      @vehicles = @vehicles.where("price_day >= ?", params[:min_price])
      @current_min_price = params[:min_price]
    end

    if params[:max_price].present?
      @vehicles = @vehicles.where("price_day <= ?", params[:max_price])
      @current_max_price = params[:max_price]
    end

  end


  def show
    @vehicle = Vehicle.find(params[:id])
    @booking = Booking.new
    @booked_dates = @vehicle.bookings.pluck(:start_date, :end_date).map { |range| { from: range[0], to: range[1] } }
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    if @vehicle.save
      redirect_to vehicle_path(@vehicle)
    else
      render :new, status: :unprocessable_entity
    end
  end

private

def vehicle_params
  params.require(:vehicle).permit(:brand, :vehicle_type, :model, :description, :location, :price_day, images:[])
end

end
