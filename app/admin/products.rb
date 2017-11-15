ActiveAdmin.register Product do
permit_params :name, :description, :price, :stock_quantity, :released, :image, :category_id	

end
