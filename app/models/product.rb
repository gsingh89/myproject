class Product < ApplicationRecord
	validates :name, :description, :price, :stock_quantity, :released, presence: true
end
