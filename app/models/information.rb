class Information < ApplicationRecord
	validates :about, :description, :email, :location, presence: true
end
