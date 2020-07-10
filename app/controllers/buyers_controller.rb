class BuyersController < ApplicationController
    before_action :find_planet, only: [:name, :show, :edit, :update]
    skip_before_action :auth_buyer, only: [:new, :create, :destroy]


    def index
        @buyers = Buyer.all
    end

    def show
        if @buyer == @current_buyer
        else
          redirect_to buyers_path 
        end 
    
    end

    def new
        @buyer = Buyer.new
    end

    def edit
    end

    def update 
        if @buyer.update(buyer_params)
          redirect_to buyer_path(@buyer.id)
        else 
          flash[:my_errors] = @buyer.errors.full_messages
          redirect_to edit_buyer_path
        end 
    end

    def create 
        @buyer = Buyer.create(buyer_params)
        
        if @buyer.valid? 
            session[:buyer_id] = @buyer.id
            redirect_to @buyer
          else
            flash[:my_errors] = @buyer.errors.full_messages 
            redirect_to new_buyer_path  
        end 
    end 

    def destroy
        @buyer = Buyer.find(params[:id])
        @buyer.destroy
        redirect_to buyers_path
    end
    
      
    
    private

    def buyer_params
        params.require(:buyer).permit(:name, :address, :img_url, :password)
    end

    def find_planet
        @buyer = Buyer.find(params[:id])
    end
end
