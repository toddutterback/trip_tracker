class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :picture
      t.text :description

      t.timestamps null: false
    end
  end
end
