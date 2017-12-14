class ProductsController < ApplicationController
	def index
		@products = if params[:category].present?
			category = Category.where(name: params[:category]).first
 			Product.where(category_id: category.id)
		else
 			Product.all
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