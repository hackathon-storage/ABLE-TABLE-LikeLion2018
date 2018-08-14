class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      
      t.integer :user_id
      t.integer :station_id
      t.string :store_name
      t.string :store_menu_img1
      t.string :store_menu_img2
      t.string :store_menu_img3
      t.string :store_img
      t.string :store_information
      t.string :store_contact
      t.integer :store_group
      t.integer :store_seat_count
      t.integer :store_seat_total
      t.string :store_address
      
      t.timestamps null: false
    end
  end
end
