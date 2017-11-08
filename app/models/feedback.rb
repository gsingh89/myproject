class Feedback < ApplicationRecord
 belongs_to :Customer
 validates :title, :description, presence:true
end
