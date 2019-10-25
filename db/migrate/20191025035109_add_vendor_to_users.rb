class AddVendorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :vendor, :boolean
  end
end
