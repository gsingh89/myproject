class HomepageController < ApplicationController
  def index
  	@info = Information.all
  end
end
