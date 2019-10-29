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
    @new_holiday = current_user.holidays.new(holiday_params)

    if @new_holiday.save
      id = @new_holiday.id
      redirect_to "/holidays/show/#{id}"
    else
      p @new_holiday.errors
      puts 'something wrong happened'

    end
  end

  def show
    puts params
    @holiday = Holiday.find(params[:id])
  end

  def destroy; end

  private

  def holiday_params
    params.require(:holiday).permit(:title, :description, :pictureUrl, :price)
  end
end
