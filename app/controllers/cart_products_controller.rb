class CartProductsController < ApplicationController

	def create
    # redirect_to new_session_path, flash: { notice: 'You must log in to add products to a cart.' } unless current_user.present?

    cart_product = CartProduct.create cart_product_params.merge(cart_id: cart.id)

    redirect_to products_url, notice: 'Successfully added product to cart.'
	end

  def destroy
    cart_product = CartProduct.where(id: params[:id], cart_id: cart.id).first
    cart_product.destroy

    redirect_to cart_path, flash: { notice: 'Successfully removed product from cart.' }
  end

  def cart_product_params
    params.require(:cart_product).permit(:product_id)
  end

  private

  def cart
    current_user.cart
  end

  # def cart
  #   if current_user.present?
  #     current_user.cart
  #   elsif session[:cart_id].present?
  #     Cart.find session[:cart_id]
  #   else
  #     Cart.create.tap do |cart|
  #       session[:cart_id] = cart.id
  #     end
  #   end
  # end
end