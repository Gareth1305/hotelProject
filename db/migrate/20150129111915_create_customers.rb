class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :custFirstName
      t.string :custLastName
      t.string :custEmail
      t.date :custDOB
      t.string :custPhone
      t.string :custMobile
      t.string :custAddress
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
