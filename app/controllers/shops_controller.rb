class ShopsController < ApplicationController
  skip_before_action :auth_buyer
  
  def show
    @shop = Shop.find(params[:id])
  end

end

