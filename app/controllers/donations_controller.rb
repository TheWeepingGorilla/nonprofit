class DonationsController < ApplicationController

  def index
  end

  def new

  end

  def create
    # Set your secret key: remember to change this to your live secret key in production
    # See your keys here https://dashboard.stripe.com/account
    Stripe.api_key = "sk_test_BQokikJOvBiI2HlWgH4olfQ2"

    # Get the credit card details submitted by the form
    token = params[:stripeToken]

    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => 1000, # amount in cents, again
        :currency => "usd",
        :card => token,
        :description => "payinguser@example.com"
      )
      flash[:notice] = "Payment accepted."
      redirect_to users_path
    rescue Stripe::CardError => e
      # The card has been declined
      flash[:alert] = "Payment declined."
      render 'new'
    end
  end

  private
  def donation_params
    params.require(:donation).permit(:stripeToken,:amount, :currency, :card, :description)
  end

end
