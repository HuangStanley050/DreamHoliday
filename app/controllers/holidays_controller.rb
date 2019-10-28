# frozen_string_literal: true

class HolidaysController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def edit; end

  def new
    @holiday = Holiday.new
  end

  def create
    p params
  end

  def show; end

  def destroy; end

  private

  def create_holiday_params
    params.require(:holiday).permit(:title, :description, :picturUrl, :price)
  end
end
