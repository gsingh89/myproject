class Customer < ApplicationRecord	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 has_many :feedbacks
 
 has_many :orders
 belongs_to :province
 validates :first_name, :last_name, :address, :city, :country, :email, :postal_code, presence: true
end
