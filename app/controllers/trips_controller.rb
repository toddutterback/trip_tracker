class TripsController < ApplicationController
  
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)
    redirect_to trips_path
  end

  def edit
    @trip = Trip.find(params[:id])
    redirect_to trips_path
  end

  def update
    @trip.update(trip_params)
    redirect_to trip_path(@trip)
  end

  def destroy
    @trip.destroy
    redirect_to trips_path
  end

   private
    def trip_params
      params.require(:trip).permit(:name, :start_date, :end_date, :picture, :description)
    end
end
