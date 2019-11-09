# frozen_string_literal: true

class RemoveUserFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :users, null: false, foreign_key: true
  end
end
