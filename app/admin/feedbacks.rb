ActiveAdmin.register Feedback do


permit_params :title, :description, :price, :stock_quantity, :released, :feedback_id

end
