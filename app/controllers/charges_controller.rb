class ChargesController < ApplicationController
  def new
  	@grand_total = session[:grand_total]
  @amount = @grand_total.to_f
  end

  def create
    @curent_cust = current_customer
    
    @custdetails = Customer.where('id LIKE ?', @curent_cust.id).first

    @provincedetails = Province.where('id LIKE ?', @custdetails.province_id).first

    @mygst = @provincedetails.gst 
    @mypst = @provincedetails.pst

    @total_final = session[:total]

    
    @products = session[:bagg]  
    @products_all  = Product.all



    @calc_gst = @mygst * @total_final.to_f
    @calc_pst = @mypst  * @total_final.to_f
    @all_total = @total_final.to_f + @calc_pst   + @calc_gst  
  	# Amount in cents
  object1 = Order.create(:status => "Paid", :pst_rate =>@calc_pst , :gst_rate => @calc_gst, :customer_id => @curent_cust.id)
  object1.save

  @products.each do |variable|
    @products_all.each do |product|
      if variable['id'] == product.id
        object2 = Lineitem.create(:name => product.name, :price => product.price, :order_id => object1.id)
        object2.save
      end
    end
  end



  @grand_total = session[:grand_total]
  @amount = @grand_total.to_f

  @customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  @charge = Stripe::Charge.create(
    :customer    => @customer.id,
    :amount      => @amount.to_i,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )



rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
  end
end
