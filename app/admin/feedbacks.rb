ActiveAdmin.register Feedback do


permit_params :name, :description, :price, :stock_quantity, :released
end
