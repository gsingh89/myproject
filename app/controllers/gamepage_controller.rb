class GamepageController < ApplicationController
  def show
  	@products = Product.order("name").page(params[:page]).per(2)

  end

  def search
  end

  def search_results
  	
  	searchkeyword = params[:search_keywords]
     if params[:category_id] == ''
      @found_products = Product.where("name LIKE  '%#{searchkeyword}%'")

    else
  	@found_products = Product.where("name LIKE '%#{searchkeyword}%'").joins(:category).where("category_id LIKE ?", params[:category_id])
  end
  	@cat = Category.all;
  end

  def catsearch
    # @category = Category.find(params[:id])
  	@products = Product.where(category_id: params[:id])
  end

  def prod_display
  	# @products = Product.find(params[:name])
  	@product = Product.where(id: params[:id])
  end

  def most_recent
  	@recent = Product.order(created_at: :desc)
  end

  def onsale
  	@sale = Product.where("price < ?", 50)
  end

end

