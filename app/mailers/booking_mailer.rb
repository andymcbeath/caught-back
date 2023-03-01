class BookingMailer < ApplicationMailer
  default from: "caughtsteelinband@gmail.com"

  def booking_email
    @booking = params[:booking]
    mail(to: "caughtsteelinband@gmail.com", subject: "Test email")
  end
end
