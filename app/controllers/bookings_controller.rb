class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
    @passengers = @booking.passengers
  end

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      @booking.passengers.each do |passenger|
        PassengerMailer.confirmation_email(passenger, @booking).deliver_now
      end
      redirect_to action: 'show', id: @booking.id
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_id, passengers_attributes: [:name, :email])
  end
end
