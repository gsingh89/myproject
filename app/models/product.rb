class Product < ApplicationRecord
has_many :customers
belongs_to :category
validates :name, :description, :price, :stock_quantity, :released, presence: true

end
