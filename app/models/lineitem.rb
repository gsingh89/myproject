class Lineitem < ApplicationRecord
 belongs_to :order

 validates :name, :price, :order_id, presence: true
end
