class DashboardsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).where(user: current_user)
    current_user.notifications = 0
  end

  def show
    authorize @booking
  end
end
