class CartsController < ApplicationController
  before_action :setup_cart

  def show
  end
 
  def edit
    @cart = Cart.find params[:id]
  end

  def update
    cart = Cart.find params[:id]
    cart.update cart_params
    redirect_to cart
  end
 
  private

  def cart_params
    params.require(:cart).permit(:product_id)
  end

  def setup_cart
    if @current_user.present?
      @cart = @current_user.cart
    elsif session[:cart_id].present?
      @cart = Cart.find session[:cart_id]
    else
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end
end