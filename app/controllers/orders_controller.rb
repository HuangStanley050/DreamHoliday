# frozen_string_literal: true

require 'date'

class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:webhook]
  before_action :authenticate_user!, only: %i[edit new show history]

  def index
    @holidays = if params[:sortparams] == 'true'
                  Holiday.order(price: :asc)
                else
                  Holiday.all
                end
  end

  def sort
    @sort = true
    redirect_to orders_index_path(sortparams: @sort)
  end

  def history
    id = current_user.id

    @orders = User.find(id).orders.all
  end

  def create; end

  def edit; end

  def success; end

  def show
    @holiday = Holiday.find(params[:id])
    price = @holiday.price.to_i * 100
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
          amount: @holiday.price
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

    date = Date.current
    orderParam = { "priceTotal": totalPrice, "date": date, "user_id": user_id, "holiday_id": listing_id }

    # @newOrder_user = User.find(user_id).orders.new(orderParam)
    # @newOrder_holiday = Holiday.find(listing_id).orders.new(orderParam)
    @newOrder = Order.new(orderParam)

    if @newOrder.save
      puts 'Saved to database'
      puts "\n"
      puts "\n"
    else
      puts 'something went wrong'
    end
    puts 'Before returning 200 status'
    status 200
  end
end
