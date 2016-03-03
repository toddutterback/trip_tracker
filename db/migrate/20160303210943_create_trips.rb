class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :start_date
      t.string :date
      t.string :end_date
      t.string :date
      t.string :picture

      t.timestamps null: false
    end
  end
end
