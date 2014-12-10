class OrdersController < ApplicationController
	def new
		@order = Order.new
	end

	def create
	  @order = Order.new(order_params)
	 
	  if @order.save

	  	@current_user.orders << @order

	  	# Transfer the products from the cart to the order.
		  @current_user.cart.products.each do |product|
		  	line_item = OrderProduct.create :order_id => @order.id, :product_id => product.id
		  end

		  @current_user.cart.products = [] # Empty the cart now that all products have been associated with an order.

	    redirect_to @order, flash: {  notice: 'Order successfully created' }
	  else
	    render 'new'
	  end
	end

	def show
		@order = Order.find params[:id]
		# redirect_to products_path
	end

	def update
    @current_user.update order_params
    redirect_to products_path
  end

  def payment
  	@order = Order.find params[:id]

  	if @order.update_attributes(stripe_params)
  		redirect_to success_order_path(@order)
  	else
  		redirect_to error_order_path(@order)
  	end
  end

	private

	def stripe_params
    params.require(:order).permit(:stripe_key_1, :stripe_key_x)
	end

	def order_params
    params.require(:order).permit(:streetline1, :streetline2, :suburb, :state, :postcode, :country, :phone)
  end
end