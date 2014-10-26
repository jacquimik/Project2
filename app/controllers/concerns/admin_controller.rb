module Admin
	class ProductsController < ApplicationController
		# skip_before_filter :verify_authenticity_token

		def index
			@products = Product.all
		end

		def new 
			@product = Product.new
		end

		def create
			product = Product.create product_params
			redirect_to [:admin, product]
		end

		def show
			@product = Product.find params[:id]
		end

		def destroy
			product = Product.find params[:id]
			product.destroy

			redirect_to admin_products_path
		end

	  	def edit
	    	@product = Product.find params[:id]
	  	end

		def update
			product = Product.find params[:id]
			product.update product_params
			redirect_to [:admin, product]
		end

		private

		def product_params
			params.require(:product).permit(:name)
		end
	end
end