class PaymentsController < ApplicationController

  # POST /payments
  def create
    @product = params[:product_id]
    @user = current_user
    @amount = params[:product_price]
    token = params[:stripeToken]

    # Create the charge on Stripe's servers — this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: @amount.to_i, # amount in cents
        currency: "usd",
        source: token,
        receipt_email: @user.email,
        # description: params[:stripeEmail]
      )

      if charge.paid
        Order.create(product_id: @product, user_id: @user.id, total: @amount)
      end

    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end

    redirect_to product_path(@product)
  end
end
