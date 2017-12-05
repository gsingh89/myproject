class CartstuffController < ApplicationController
  before_action :initialize_session

  def thecart
  	@id = params[:id].to_i
  	@quantity = params[:quantity].to_i


  	# session[:cart] << @id unless session[:cart].include?(@id)
  	if session[:bagg].any? {|a| a['id'] == @id}
	   	session[:bagg].each do |variable|
	  		if variable['id'] == @id
	  			variable['quantity'] = @quantity	
	  		end
	  	end
	else
	  		   session[:bagg] << {:id => @id, :quantity => @quantity}
	  		
	  	
   end

	  		   redirect_to :action => :show
  	
  end

  def show
  	@products_all  = Product.all
  	@products = session[:bagg]	
 
    
  end

  def initialize_session
  	session[:bagg] ||= []
  end

  def remove
  	@id = params[:id].to_i

  	if session[:bagg].any? {|val| val['id'] == @id}

  	session[:bagg].each do |remove_item|

  	if remove_item['id'] == @id
  		session[:bagg].delete(remove_item)
  	end

	end
  end
  redirect_to :action => :show
end

def checkout
  if customer_signed_in?

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


  else
    redirect_to customer_session_path
  end
end
end	
