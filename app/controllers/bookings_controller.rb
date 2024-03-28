class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    params[:passengers].to_i.times { @booking.passenger.build }
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_id, passengers_attributes: [:name, :email])
  end
end
