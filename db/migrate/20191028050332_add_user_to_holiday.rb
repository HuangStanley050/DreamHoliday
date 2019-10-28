# frozen_string_literal: true

class AddUserToHoliday < ActiveRecord::Migration[6.0]
  def change
    add_reference :holidays, :user, index: true
    add_foreign_key :holidays, :users
  end
end
