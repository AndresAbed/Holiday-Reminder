class AddCustomersToHolidays < ActiveRecord::Migration
  def change
  	add_column :holidays, :customer_name, :string
  	add_column :holidays, :customer_country, :string
  	add_column :holidays, :customer_province, :string
  	add_column :holidays, :customer_email, :string
  	remove_column :holidays, :customer_id, :integer
  end
end
