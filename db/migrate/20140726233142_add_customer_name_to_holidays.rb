class AddCustomerNameToHolidays < ActiveRecord::Migration
  def change
    add_column :holidays, :customer_name, :string
  end
end
