class Admin::ProductsController < ApplicationController
	before_filter :check_for_admin
	def index
		@products = Product.all
	end

	def new 
		@product = Product.new
	end

	def create
		@product = Product.create product_params
		redirect_to [:admin, @product]
	end

	def show
		@product = Product.find params[:id]
	end

	def destroy
		@product = Product.find params[:id]
		@product.destroy

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
	def check_for_admin
		redirect_to root_path unless @current_user.admin
	end

	def product_params
		params.require(:product).permit(:name, :description, :price, :brand, :size, :image, :category_id)
	end
end