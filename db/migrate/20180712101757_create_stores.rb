class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      
      t.string :store_name
      t.string :store_img1
      t.string :store_img2
      t.string :store_img3
      t.string :store_img4
      t.string :store_information
      t.integer :store_contact
      t.integer :store_group
      t.integer :store_seat_count
      t.integer :store_seat_total
      t.integer :user_id
      t.integer :station_id
      t.string :store_address
    end
  end
end
