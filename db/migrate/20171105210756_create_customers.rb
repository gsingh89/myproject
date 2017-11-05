class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      t.text :address
      t.text :city
      t.text :country
      t.string :postal_code
      t.string :email

      t.timestamps
    end
  end
end
