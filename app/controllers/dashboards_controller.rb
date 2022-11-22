class DashboardsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).where(user: current_user)
    @bookings_as_owner = current_user.bookings_as_owner
  end

  def show
    authorize @booking
  end
end
