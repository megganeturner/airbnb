class AddHomeIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :home_id, :integer
  end
end
