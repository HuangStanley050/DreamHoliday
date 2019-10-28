# frozen_string_literal: true

class AddHolidayToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :holiday, index: true
    add_foreign_key :orders, :holidays
  end
end
