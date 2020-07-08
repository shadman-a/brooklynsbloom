class ApplicationController < ActionController::Base
    before_action :auth_buyer

    private
  
    def set_buyer
      @current_buyer = Buyer.find_by(id: session[:buyer_id])
    end 
  
    def auth_buyer
      redirect_to new_buyer_path unless set_buyer
    end 
  
end
