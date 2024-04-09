# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
  def confirmation_email
    PassengerMailer.confirmation_email(Booking.first.passengers.first, Booking.first)
  end
end
