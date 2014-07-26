class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :title
      t.date :date
      t.string :reminder

      t.timestamps
    end
  end
end
