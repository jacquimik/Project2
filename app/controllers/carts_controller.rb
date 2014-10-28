class CartsController < ApplicationController
  before_action :get_cart

  def show

  end
 
  def edit

  end

  def update

  end
 
  private
 
  def get_cart
  	@cart = current_user.cart
  end
end