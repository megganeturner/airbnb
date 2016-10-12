class CreateBookingsHomes < ActiveRecord::Migration
  def change
    create_table :bookings_homes, :id => false do |t|
      t.integer :booking_id
      t.integer :home_id
    end
  end
end
