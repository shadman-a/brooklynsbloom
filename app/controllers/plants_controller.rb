class PlantsController < ApplicationController
    skip_before_action :auth_buyer

    def show
        @plant = Plant.find(params[:id])
    end

    def edit
        @plant = Plant.find(params[:id])
    end

    def update
        @plant = Plant.find(params[:id])
        @plant.update(plant_params)
        redirect_to plant_path(@plant.id)
    end

    def index
        # @plants = Plant.all
        # @plant = @q.result(distinct: true)if !params[:brightness].blank?
        # @plants = Plant.by_brightness(brightness: params[:brightness])
        
        if params[:brightness] == "Low"
          @plants = Plant.where_low
        elsif params[:brightness] == "Medium"
          @plants = Plant.where_medium
        elsif params[:brightness] == "High"
          @plants = Plant.where_high
        else
          @plants = Plant.all
      end
    end
    
    private

    def plant_params
        params.require(:plant).permit(:name, :size, :description, :price, :brightness, :img_url)
    end

end
