class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :roomNum
      t.integer :roomFloor
      t.string :roomPic
      t.string :roomType
      t.float :roomPrice
      t.integer :hotel_id

      t.timestamps
    end
  end
end
