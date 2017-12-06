class Changecolumnname < ActiveRecord::Migration[5.1]
  def change
  	rename_column :customers, :first_name, :name
  end
end
