class BookingsController < ApplicationController
  before_action :find_booking, only: %i[accept decline]
  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new(user: current_user, activity: @activity)
    authorize @booking
    if @booking.save
      redirect_to activity_path(@activity), flash: { notice: "You booked this activity!" }
    end
  end

  def accept
    authorize @booking
    @booking.state = "accepted"
    increment_notif
  end

  def decline
    authorize @booking
    @booking.state = "decline"
    increment_notif
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def increment_notif
    @booking.user.notifications += 1
    @booking.user.save
    @booking.save
    redirect_to dashboards_path
  end
end
