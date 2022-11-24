class DashboardsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  def show
    authorize @booking
  end
end
