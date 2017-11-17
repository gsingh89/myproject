class RemovePhoneNumberFromInformation < ActiveRecord::Migration[5.1]
  def change
  	 remove_column :information, :phone_number
  end
end
