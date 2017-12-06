class CreateLineitems < ActiveRecord::Migration[5.1]
  def change
    create_table :lineitems do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
