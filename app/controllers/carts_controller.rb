class CartsController < ApplicationController

  def index
    @cart = Cart.all
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.create(cart_params)

    redirect_to cart_path
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
    Cart = Cart.find(params[:id])
    @cart.destroy

    redirect_to carts_path
  end

  private

  def cart_params
    params.require(:cart).permit(:purchased, :buyer_id, :buyer_plant_id)
  end

end
