ActiveAdmin.register Customer do

permit_params :first_name, :last_name, :address, :city, :country, :postal_code, :email, :product_id
end
 		