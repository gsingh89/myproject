class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.varchar :name
      t.varchar :description
      t.decimal :price
      t.integer :stock_quantity
      t.date :released

      t.timestamps
    end
  end
end
