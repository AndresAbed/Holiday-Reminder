class RemoveNotificationsFromHolidays < ActiveRecord::Migration
  def change
    remove_column :holidays, :notifications, :boolean
  end
end
