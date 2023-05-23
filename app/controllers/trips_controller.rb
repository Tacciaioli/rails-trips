class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def show
  end


  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.save

    redirect_to trip_path(@trip)
  end



  private

  def trip_params
    params.require(:trip).permit(:name, :location)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

end
