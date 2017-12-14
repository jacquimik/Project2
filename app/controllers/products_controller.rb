class ProductsController < ApplicationController
	def index
		@products = if params[:category].present?
			category = Category.where(name: params[:category]).first
 			Product.where(category_id: category.id)
		else
 			get_products_by_category_id(get_uniq_product_ids)
		end
	end

	def show
		@product = Product.find params[:id].uniq
	end

	private

	def get_products_by_category_id(get_uniq_product_ids)
		get_uniq_product_ids.map do |id|
			Product.find(id)
		end
	end

	def get_uniq_product_ids
		Product.all.map(&:category_id).uniq
	end

	def product_params
		params.require(:product).permit(:name, :description, :price, :brand, :size, :image)
	end
end