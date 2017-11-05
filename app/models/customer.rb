class Customer < ApplicationRecord
 validates :first_name, :last_name, :address, :city, :country, :email, :postal_code, presence: true
end
