class Province < ApplicationRecord
	validates :name, :pst, :gst, presence: true
end
