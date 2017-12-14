class CartProductsController < ApplicationController
  before_filter :authorize, only: [:create, :destroy]

	def create
    cart = current_user.cart
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
end