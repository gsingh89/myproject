ActiveAdmin.register Customer do

permit_params :name, :last_name, :address, :city, :country, :postal_code, :email
end
 		