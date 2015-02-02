class Admin < ActiveRecord::Base
	has_secure_password
	validates_uniqueness_of :adminEmail
end