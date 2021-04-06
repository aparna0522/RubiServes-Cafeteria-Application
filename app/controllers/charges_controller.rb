class ChargesController < ApplicationController
    def new
    end
    
    def create
      # Amount in cents
      @amount = 29000
        # @ordeer = current_ordeer
        # @ordeer_item = @ordeer.ordeer_items.find(params[:id])
    #   request = Ordeer.find(params[:id])
    #   amount = request.sum(:total) * 100
    
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })
    
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'inr',
      })
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to "/dashboard"
    end
end
