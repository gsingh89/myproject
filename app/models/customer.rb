class Customer < ApplicationRecord
 belongs_to :product
 has_many :feedbacks

 validates :first_name, :last_name, :address, :city, :country, :email, :postal_code, presence: true
end
