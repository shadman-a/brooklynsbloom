class CartsController < ApplicationController

  def new
    @cart = Cart.new
    @buyers = Buyer.all
    @plants = Plant.all
    @plant = Plant.find(params[:plant])
  end

  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
  end


  def create
    cart = Cart.create(cart_params)

    redirect_to cart_path(cart)
  end

  def update
    @cart = Cart.find(params[:id])
    @cart.update(cart_params)

    redirect_to cart_path
  end

  def edit
    @cart = Cart.find(params[:id])
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    redirect_to carts_path
  end

  

  private

  def cart_params
    params.require(:cart).permit(:purchased, :buyer_id, :plant_id)
  end

end
