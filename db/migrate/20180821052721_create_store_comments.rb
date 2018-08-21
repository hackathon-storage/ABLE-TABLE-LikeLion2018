class CreateStoreComments < ActiveRecord::Migration[5.0]
  def change
    create_table :store_comments do |t|
      t.string :content
      t.integer :store_id

      t.timestamps
    end
  end
end
