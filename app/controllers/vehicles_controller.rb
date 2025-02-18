class VehiclesController < ApplicationController
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
      @vehicles = @vehicles.where(filters)
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

end
