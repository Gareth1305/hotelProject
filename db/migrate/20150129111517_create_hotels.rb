class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :hotelName
      t.string :hotelPicture
      t.string :hotelLocation
      t.string :hotelPhone
      t.string :hotelEmail
      t.integer :hotelNumOfRooms
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
