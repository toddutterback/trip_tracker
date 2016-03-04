class AddressesController < ApplicationController
   def index
    @location = Location.find(params[:location_id])
    @addresses = @location.items
  end

  def show
  end

  def new
    @location = Location.find(params[:location_id])
    @address = Address.new
  end

  def create
    @location = Location.find(params[:location_id])
    @location.addresses.create(address_params)
    redirect_to trip_location_addresses_path(@location.trip, @location)
  end

  def edit
  end

  def update
  end

  private
  def item_params
    params.require(:address).permit(:street, :city, :state, :zip, :country)
  end

end
