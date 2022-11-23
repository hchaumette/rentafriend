class BookingsController < ApplicationController

  def index
    raise
    @bookings = policy_scope(Booking)
  end

  def show
    @bookings = Booking.find(params[:id])
    authorize @booking
  end
end
