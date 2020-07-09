class SessionsController < ApplicationController
  skip_before_action :auth_buyer, only: [:login, :create]

  def login 
  end 

  def create
    buyer = Buyer.find_by(name: params[:session][:name])

    if buyer && buyer.authenticate(params[:session][:password])
      session[:buyer_id] = buyer.id
      redirect_to buyer
    else  
      redirect_to new_login_path
    end 

  end 

  def logout
    session.delete(:buyer_id)
    redirect_to buyers_path
  end 
    
end