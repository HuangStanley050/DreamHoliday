# frozen_string_literal: true

class ChangePriceToHoliday < ActiveRecord::Migration[6.0]
  def change
    change_column :holidays, :price, :decimal
  end
end
