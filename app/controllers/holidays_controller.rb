# frozen_string_literal: true

class HolidaysController < ApplicationController
  before_action :authenticate_user!, only: %i[index edit new show]

  def index
    redirect_to '/orders/index' if current_user.vendor == false
    @holidays = current_user.holidays.all
  end

  def edit
    @holiday = Holiday.find(params[:id])
  end

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
    # puts params
    @holiday = Holiday.find(params[:id])
  end

  def update
    puts 'You have hit the patch endpoint for '
    id = params[:id]
    @holiday = current_user.holidays.find_by_id(id)

    if @holiday.update(holiday_params)
      id = @holiday.id
      redirect_to "/holidays/show/#{id}"
    else
      p @holiday.errors
      puts 'Something went wrong'
    end
  end

  def destroy
    id = params[:id]
    @holiday = current_user.holidays.find_by_id(id)
    @holiday.destroy
    puts 'successfully deleted'
    redirect_to holidays_index_path
  end

  private

  def holiday_params
    params.require(:holiday).permit(:title, :description, :pictureUrl, :price)
  end
end
