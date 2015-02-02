class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.float :bookingCost
      t.date :checkInDate
      t.date :checkOutDate
      t.integer :customer_id
      t.integer :room_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
