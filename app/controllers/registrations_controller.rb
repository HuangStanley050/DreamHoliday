# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    # add custom create logic here
    super
    # vendor = false
    # name = params['user']['name']
    # email = params['user']['email']
    #
    # vendor = true if params['vendor']
    # # puts "vendor field is #{vendor}"
    # # puts "name is #{name}"
    # # puts "email is #{email}"
    # p sign_up_params['vendor']
    # byebug
    # user = User.new
    #
    # user.save
  end

  def update
    super
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :vendor, :admin)
  end
end
