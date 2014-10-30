class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = (calc_total_price * 100).to_i

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    # clear cart at end after order
    initialize_new_cart

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
