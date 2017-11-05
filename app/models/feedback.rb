class Feedback < ApplicationRecord
 validates :title, :description, presence:true
end
