# frozen_string_literal: true

class CreateHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :holidays do |t|
      t.string :title
      t.string :description
      t.string :pictureUrl
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
