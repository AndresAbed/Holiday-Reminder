class AddCustomerCountryToHolidays < ActiveRecord::Migration
  def change
    add_column :holidays, :customer_country, :string
    add_column :holidays, :customer_province, :string
    add_column :holidays, :customer_email, :string
  end
end
