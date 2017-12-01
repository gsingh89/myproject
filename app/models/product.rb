class Product < ApplicationRecord

belongs_to :category

mount_uploader :image, ImageUploader
validates :name, :description, :price, :stock_quantity, :released, presence: true

end
