# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150129112942) do

  create_table "admins", :force => true do |t|
    t.string   "adminEmail"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "bookings", :force => true do |t|
    t.float    "bookingCost"
    t.date     "checkInDate"
    t.date     "checkOutDate"
    t.integer  "customer_id"
    t.integer  "room_id"
    t.integer  "hotel_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "custFirstName"
    t.string   "custLastName"
    t.string   "custEmail"
    t.date     "custDOB"
    t.string   "custPhone"
    t.string   "custMobile"
    t.string   "custAddress"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "hotels", :force => true do |t|
    t.string   "hotelName"
    t.string   "hotelPicture"
    t.string   "hotelLocation"
    t.string   "hotelPhone"
    t.string   "hotelEmail"
    t.integer  "hotelNumOfRooms"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "rooms", :force => true do |t|
    t.integer  "roomNum"
    t.integer  "roomFloor"
    t.string   "roomPic"
    t.string   "roomType"
    t.float    "roomPrice"
    t.integer  "hotel_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
