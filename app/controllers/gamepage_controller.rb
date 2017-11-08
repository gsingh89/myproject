class GamepageController < ApplicationController
  def show
  	@products = Product.all
  end
end
