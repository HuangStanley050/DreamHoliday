# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :priceTotal
      t.date :date
      t.references :users, null: false, foreign_key: true
      t.references :holidays, null: false, foreign_key: true

      t.timestamps
    end
  end
end
