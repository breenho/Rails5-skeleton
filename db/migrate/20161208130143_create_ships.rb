class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
	  t.string :name
      t.string :description
      t.integer :model_year
      t.integer :seat_capacity
      t.string :origin_station
      t.string :destination_station
      t.integer :no_of_stops
      t.boolean :is_non_stop

      t.references :ship_type
      t.timestamps
    end
  end
end
