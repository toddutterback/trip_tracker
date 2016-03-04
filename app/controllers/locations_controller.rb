class LocationsController < ApplicationController
  def index
    @trip = Trip.find(params[:trip_id])
    @locations = @trip.locations
  end

  def show
    @location = Location.find(params[:id])
  end

  def edit
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @location = Location.new
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @trip.locations.create(location_params)
    redirect_to trip_location_path(@trip)
  end

  private
    def location_params
      params.require(:location).permit(:name)
    end
end

