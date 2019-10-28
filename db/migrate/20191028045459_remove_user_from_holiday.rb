# frozen_string_literal: true

class RemoveUserFromHoliday < ActiveRecord::Migration[6.0]
  def change
    remove_reference :holidays, :users, null: false, foreign_key: true
  end
end
