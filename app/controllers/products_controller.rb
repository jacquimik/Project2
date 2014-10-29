class ProductsController < ApplicationController
	# skip_before_filter :verify_authenticity_token

	def index
		if params[:category].present?
			# category = Category.where(name: params[:category]).first
			# category_products = CategoryProduct.where(category_id: category.id)
  		# @products = Product.where()
		else
 			@products = Product.all
		end
	end

	def show
		@product = Product.find params[:id]
	end

	private

	def product_params
		params.require(:product).permit(:name, :description, :price, :brand, :size, :image)
	end
end

# routes
# Ω