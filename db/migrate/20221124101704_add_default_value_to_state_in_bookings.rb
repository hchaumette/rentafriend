class AddDefaultValueToStateInBookings < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :state, "pending"
  end
end
