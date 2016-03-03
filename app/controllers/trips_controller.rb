class TripsController < ApplicationController
  
  def index
    @trips = Trip.find(params[:id])
    @trips = Trip.all
  end

  def show

  end

  def new
  end

  def edit
  end
end
