class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.char :first_name
      t.char :last_name
      t.varchar :address
      t.char :city
      t.char :country
      t.varchar :postal_code
      t.varchar :email

      t.timestamps
    end
  end
end
