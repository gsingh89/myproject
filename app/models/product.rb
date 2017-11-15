class Product < ApplicationRecord
has_many :customers
validates :name, :description, :price, :stock_quantity, :released, presence:true

end
