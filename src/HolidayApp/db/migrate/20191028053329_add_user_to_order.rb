# frozen_string_literal: true

class AddUserToOrder < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :user, index: true
    add_foreign_key :orders, :users
  end
end
