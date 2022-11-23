class BookingsController < ApplicationController

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new(user: current_user, activity: @activity)
    authorize @booking
    if @booking.save
      redirect_to activity_path(@activity), flash: { notice: "You booked this activity!" }
    end
  end
end
