class ChargesController < ApplicationController
    def new
    end
    
    def create
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })
    
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: current_ordeer.subtotal.to_i * 100 ,
        description: 'Rails Stripe customer',
        currency: 'inr',
      })
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to "/dashboard"
    end
end
