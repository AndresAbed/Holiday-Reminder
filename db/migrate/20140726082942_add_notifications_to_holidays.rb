class AddNotificationsToHolidays < ActiveRecord::Migration
  def change
    add_column :holidays, :notifications, :boolean
  end
end
