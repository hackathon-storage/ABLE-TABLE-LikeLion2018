class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      
      t.string :station_name
      t.float :station_position_x
      t.float :station_position_y

      t.timestamps null:false
    end
  end
end
