class BookingMailer < ApplicationMailer
  default from: ENV["GMAIL_USERNAME"]

  def booking_confirmation(booking)
    @booking = booking
    mail(to: ENV["GMAIL_ADDRESS"], subject: "New Booking!")
  end
end
