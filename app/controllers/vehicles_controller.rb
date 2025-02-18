class VehiclesController < ApplicationController
  # Skip authentication for the show action
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @vehicle = Vehicle.find(params[:id])
    @booking = Booking.new
  end



end
