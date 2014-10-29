class CartProductsController < ApplicationController
	def create
    cart = current_user.cart

    cart_product = CartProduct.create cart_product_params.merge(cart_id: cart.id)

    redirect_to products_url, notice: 'Successfully added product to cart'
	end

  def cart_product_params
    params.require(:cart_product).permit(:product_id)
  end
end