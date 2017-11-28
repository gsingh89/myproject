class Customer < ApplicationRecord	
 has_many :feedbacks
 belongs_to :Product
 has_many :orders
 belongs_to :province
 validates :first_name, :last_name, :address, :city, :country, :email, :postal_code,:province_id, presence: true
end
