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

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
