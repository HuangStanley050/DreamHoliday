# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    # add custom create logic here
    p params
  end

  def update
    super
  end
end
