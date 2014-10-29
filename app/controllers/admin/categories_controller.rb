class Admin::CategoriesController < ApplicationController
	before_filter :check_for_admin
		def index
			@categories = Category.all
		end

		def new 
			@category = Category.new
		end

		def create
			@category = Category.create category_params
			redirect_to [:admin, @category]
		end

		def show
			@category = Category.find params[:id]
		end

		def destroy
			category = Category.find params[:id]
			category.destroy
			redirect_to admin_categories_path
		end

	  def edit
	    @category = Category.find params[:id]
	  end

		def update
			category = Category.find params[:id]
			category.update category_params
			redirect_to [:admin, category]
		end

		
		private
		def check_for_admin
			redirect_to root_path unless @current_user.admin
		end

		def category_params
			params.require(:category).permit(:name)
		end
	end