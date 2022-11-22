class DashboardsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end
end
