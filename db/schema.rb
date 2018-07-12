# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180712101757) do

  create_table "stations", force: :cascade do |t|
    t.string   "station_name"
    t.float    "station_position_x"
    t.float    "station_position_y"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "station_id"
    t.string   "store_name"
    t.string   "store_menu_img1"
    t.string   "store_menu_img2"
    t.string   "store_menu_img3"
    t.string   "store_img"
    t.string   "store_information"
    t.integer  "store_contact"
    t.integer  "store_group"
    t.integer  "store_seat_count"
    t.integer  "store_seat_total"
    t.string   "store_address"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
