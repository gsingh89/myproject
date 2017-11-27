class Order < ApplicationRecord
	belongs_to :customer

	validates :status, :pst_rate, :gst_rate, :customer_id, presence: true
end
