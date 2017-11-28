class CartstuffController < ApplicationController
  before_action :initialize_session

  def thecart
  	@id = params[:id].to_i

  	session[:cart] << @id unless session[:cart].include?(@id)
  	redirect_to :action => :show
  end

  def show
  	@products = Product.find(session[:cart])	
  end

  def initialize_session
  	session[:cart] ||= []
  end

  def remove
  	@id = params[:id].to_i
  	session[:cart].each do | remove_item|
  	if remove_item == @id
  		session[:cart].delete(remove_item)
  	end

  end
  redirect_to :action => :show

end
end	
