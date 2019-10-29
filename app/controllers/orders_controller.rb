# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :authenticate_user!, only: %i[edit new show]

  def index
    @holidays = Holiday.all
  end

  def create; end

  def edit; end

  def success; end

  def show
    @holiday = Holiday.find(params[:id])

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,
      line_items: [{
        name: @holiday.title,
        description: @holiday.description,
        amount: @holiday.price * 100,
        currency: 'aud',
        quantity: 1
      }],
      payment_intent_data: {
        metadata: {
          user_id: current_user.id,
          listing_id: @holiday.id
        }
      },
      success_url: "#{root_url}orders/payments/success?userId=#{current_user.id}&listingId=#{@holiday.id}",
      cancel_url: "#{root_url}orders/index"
    )

    @session_id = session.id
  end
end
