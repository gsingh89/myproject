class ChargesController < ApplicationController
  def new
  	@grand_total = session[:grand_total]
  @amount = @grand_total.to_f
  end

  def create
  	# Amount in cents
    @grand_total = session[:grand_total]
  @amount = @grand_total.to_f

  @customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  @charge = Stripe::Charge.create(
    :customer    => @customer.id,
    :amount      => @amount.to_i,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
  end
end
