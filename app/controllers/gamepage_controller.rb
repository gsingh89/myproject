class GamepageController < ApplicationController
  def show
  	@products = Product.order("name").page(params[:page]).per(2)

  end

  def search
  end

  def search_results
  	searchkeyword = params[:search_keywords]
  	@found_products = Product.where("name LIKE  '%#{searchkeyword}%'")
  	@cat = Category.all;
  end
end

