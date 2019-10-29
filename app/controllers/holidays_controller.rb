# frozen_string_literal: true

class HolidaysController < ApplicationController
  before_action :authenticate_user!, only: %i[edit new show]

  def index
    @holidays = Holiday.all
  end

  def edit; end

  def new
    if current_user.vendor
      @holiday = Holiday.new
    else
      redirect_to '/holidays/index'
    end
  end

  def create
    # p current_user
    # p params
    # p holiday_params
    # p "Current user id #{current_user.id}"
    # @vendor = User.find(current_user.id)

    @new_holiday = current_user.holidays.new(holiday_params)

    # downloadableURL = @new_holiday.pictureUrl.service_url

    # @new_holiday = current_user.holidays.new(
    #   title: holiday_params['title'], description: holiday_params['description'], price: holiday_params['price'], pictureUrl: downloadableURL
    # )

    # puts downloadableURL

    if @new_holiday.save
      # puts 'the record has been saved###'
      # puts @new_holiday.pictureUrl.service_url
      redirect_to '/holidays/show'
    else
      p @new_holiday.errors
      puts 'something wrong happened'
    end
  end

  def show; end

  def destroy; end

  private

  def holiday_params
    params.require(:holiday).permit(:title, :description, :pictureUrl, :price)
  end
end
