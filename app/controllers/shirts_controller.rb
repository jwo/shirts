require 'pry'
class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all
  end

  def show
    @shirt = Shirt.find params[:id]
  end

  def charge
    @shirt = Shirt.find params[:id]
    Stripe.api_key = Rails.application.secrets.stripe_api_key 

# Get the credit card details submitted by the form
token = params[:stripeToken]

# Create the charge on Stripe's servers - this will charge the user's card
begin
  charge = Stripe::Charge.create(
    :amount => @shirt.price_in_cents, # amount in cents, again
    :currency => "usd",
    :card => token,
    :description => "#{@shirt.name} > #{@shirt.description}"
  )

  purchase = Purchase.create shirt: @shirt,
                  price_in_cents: @shirt.price_in_cents,
                  stripe_transaction: charge.id

  session[:purchase_id] = purchase.id

rescue Stripe::CardError => e
  # The card has been declined
end

    redirect_to "/thanks"
  end

  def thanks
    @purchase = Purchase.find_by session[:purchase_id]
  end
end
