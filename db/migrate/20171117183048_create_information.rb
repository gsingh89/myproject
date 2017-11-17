class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
      t.text :about
      t.text :description
      t.string :email
      t.integer :phone_number
      t.text :location

      t.timestamps
    end
  end
end
