class Customer < ApplicationRecord	
 has_many :feedbacks
 belongs_to :Product
 has_many :orders
 validates :first_name, :last_name, :address, :city, :country, :email, :postal_code, presence: true
end
