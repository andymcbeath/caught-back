class BookingsController < ApplicationController
  def create
    @booking = Booking.create!(
      firstName: params[:firstName],
      lastName: params[:lastName],
      email: params[:email],
      event: params[:event],
    )
    BookingMailer.booking_confirmation(@booking).deliver_now
    render json: @booking.as_json
  end
end
