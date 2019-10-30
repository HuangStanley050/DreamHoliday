# frozen_string_literal: true

class ChangePriceTotalToOrder < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :priceTotal, :decimal
  end
end
