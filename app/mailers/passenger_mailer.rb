class PassengerMailer < ApplicationMailer
  default from: 'notifications@flightbooker.com'

  def confirmation_email(passenger, booking)
    @passenger = passenger
    @booking = booking
    @flight = @booking.flight
    @passengers = @booking.passengers
    @url = 'http://flightbooker.com'
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
