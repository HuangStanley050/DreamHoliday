# frozen_string_literal: true

class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]
  before_action :authenticate_user!, only: %i[edit new show]

  def index
    @holidays = Holiday.all
  end

  def create; end

  def edit; end

  def success; end

  def show
    @holiday = Holiday.find(params[:id])
    price = Integer(@holiday.price)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,
      line_items: [{
        name: @holiday.title,
        description: @holiday.description,
        amount: price,
        currency: 'aud',
        quantity: 1
      }],
      payment_intent_data: {
        metadata: {
          user_id: current_user.id,
          listing_id: @holiday.id,
          amount: price
        }
      },
      success_url: "#{root_url}orders/payments/success?userId=#{current_user.id}&listingId=#{@holiday.id}",
      cancel_url: "#{root_url}orders/index"
    )

    @session_id = session.id
  end

  def webhook
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    listing_id = payment.metadata.listing_id
    user_id = payment.metadata.user_id
    totalPrice = payment.metadata.amount

    date = 0

    # orderParam = {"totalPrice":totalPrice, "date": date}

    # @newOrder_user = current_user.orders.new()
    # @newOrder_holiday = Holiday.find(listing_id).orders.new()
    p 'total price ' + totalPrice
    p 'holiday id ' + listing_id
    p 'user id ' + user_id

    status 200
  end
end
