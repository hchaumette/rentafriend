class BookingsController < ApplicationController
  before_action :find_booking, only: %i[accept decline]
  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new(user: current_user, activity: @activity)
    authorize @booking
    redirect_to activity_path(@activity), flash: { notice: "You booked this activity!" } if @booking.save
    user = @activity.user
    user.notifications += 1
    user.save
  end

  def accept
    authorize @booking
    @booking.state = "accepted"
    increment_notif
  end

  def decline
    authorize @booking
    @booking.state = "declined"
    increment_notif
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def increment_notif
    user = @booking.user
    user.notifications += 1
    user.save
    @booking.save
    redirect_to dashboards_path
  end
end
