# frozen_string_literal: true

class HolidaysController < ApplicationController
  before_action :authenticate_user!, only: %i[index edit new show]

  def index
    redirect_to '/orders/index' if current_user.vendor == false # route guard
    @holidays = current_user.holidays.all
  end

  def edit
    redirect_to '/orders/index' if current_user.vendor == false # route guard
    redirect_to '/holidays/index' if # route guard current_user.holidays.find_by_id(params[:id]).nil?
    @holiday = Holiday.find(params[:id])
  end

  def new
    if current_user.vendor # route guard
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
      p @new_holiday.errors.messages
      # puts 'something wrong happened'
      titleError = @new_holiday.errors.messages[:title][0]
      descriptionError = @new_holiday.errors.messages[:description][0]
      pictureUrlError = @new_holiday.errors.messages[:pictureUrl][0]
      priceError = @new_holiday.errors.messages[:price][0]

      redirect_to holidays_error_path(title: titleError, description: descriptionError, pictureUrl: pictureUrlError, price: priceError)
    end
  end

  def error
    puts params
  end

  def show
    # puts params
    redirect_to '/orders/index' if current_user.vendor == false # route guard
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
