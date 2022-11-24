class DashboardsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).where(user: current_user)
    current_user.notifications = 0
    current_user.save
  end

  def show
    authorize @booking
  end
end
