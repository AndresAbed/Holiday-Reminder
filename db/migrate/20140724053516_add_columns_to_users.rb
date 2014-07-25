class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :country, :string
    add_column :users, :province, :string
  end
end
