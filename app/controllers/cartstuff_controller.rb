class CartstuffController < ApplicationController
  before_action :initialize_session

  def thecart
  	@id = params[:id].to_i

  	session[:cart] << :id unless session[:cart].include?(@id)
  end

  def show
  end

  def initialize_session
  session[:cart] ||= []
  end



end
