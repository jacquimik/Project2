class ProductsController < ApplicationController
	# skip_before_filter :verify_authenticity_token

	def index
		@products = Product.all
	end

	def show
		@product = Product.find params[:id]
	end

	private

	def product_params
		params.require(:product).permit(:name, :description, :price, :brand, :size, :image)
	end
end