class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @bookings = Booking.find(params[:id])
    authorize @booking
  end

  def create

  end
end
