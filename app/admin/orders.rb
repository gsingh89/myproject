ActiveAdmin.register Order do

permit_params :status, :pst_rate, :gst_rate, :customer_id

end
