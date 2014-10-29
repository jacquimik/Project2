class OrdersController < ApplicationController
	def new
		@order = Order.new
	end

	def create
	  @order = Order.new(order_params)
	 
	  if @order.save
	    redirect_to @order, flash: {  notice: 'Order successfully created' }
	  else
	    render 'new'
	  end
	end

	def show
		@order = Order.find params[:id]
	end

	private

	def order_params
    params.require(:order).permit(:streetline1, :streetline2, :suburb, :state, :postcode, :country, :phone)
  end
end