class AddPriceToHolidays < ActiveRecord::Migration[6.0]
  def change
    add_column :holidays, :price, :integer
  end
end
