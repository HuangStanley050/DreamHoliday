# frozen_string_literal: true

class RemoveHolidayFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :holidays, null: false, foreign_key: true
  end
end
