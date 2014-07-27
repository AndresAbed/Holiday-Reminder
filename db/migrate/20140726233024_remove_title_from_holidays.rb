class RemoveTitleFromHolidays < ActiveRecord::Migration
  def change
    remove_column :holidays, :title, :string
  end
end
