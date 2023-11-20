class CheckoutController < ApplicationController

  def new 
  end 

  def create 
    # product = Product.find_by(id: params[:id])
    # @session = Stripe::Checkout::Session.create({
    #   payment_method_types: ['card'],
    #   line_items: [{
    #     # name: product.name,
    #     # amount: 120,
    #     # currency: "usd",
    #     # quantity: 1,
        
    #     price_data: {
    #       product_data: {
    #         name: product.name 
    #       },
    #       unit_amount: 300, 
    #       currency: "usd"
    #     },
    #     quantity: 1
    #   }],
    #   mode: 'payment',
    #   success_url: root_url,
    #   cancel_url: root_url,
    # })
  
    token = params[:stripeToken]
    # product_price = params[:product_price]

    begin
      charge = Stripe::Charge.create({
        amount: 123,
        currency: 'usd',
        source: token
    })

      # Handle successful payment - e.g., update order status, send confirmation, etc.
      # Redirect or render success message
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_checkout_path
  end
end
end
