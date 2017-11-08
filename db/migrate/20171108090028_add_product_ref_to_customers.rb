class AddProductRefToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :Product, foreign_key: true
  end
end
