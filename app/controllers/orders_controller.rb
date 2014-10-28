class OrdersController < ApplicationController
	def new
		@order = Order.new
		@product = Product.find params[:product_id]
	end

	def create
		@order = Order.create order params
		@order.update :status => 'pending'
		product = Product.find params[:product_id]
		@order.products << product
		session[:order_id] = @order.order_id

		if @current_user.present?
			@order.update :user_id => @current_user.user_id
			redirect_to checkout_path session[:order_id]
		else
			redirect_to login_path
	end
end