class Booking < ActiveRecord::Base
	belongs_to :customer
	belongs_to :room
	belongs_to :hotel
	
	has_many :customers, :dependent => :destroy
	has_many :rooms, :dependent => :destroy
	has_many :hotels, :dependent => :destroy
end
