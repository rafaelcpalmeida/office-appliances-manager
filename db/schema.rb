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

ActiveRecord::Schema.define(version: 2018_11_19_141854) do

  create_table "appliance_records", force: :cascade do |t|
    t.string "type", null: false
    t.integer "appliance_id"
    t.float "decibels_value"
    t.float "temperature"
    t.float "carbon_dioxide_level"
    t.float "humidity_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appliance_id"], name: "index_appliance_records_on_appliance_id"
  end

  create_table "appliances", force: :cascade do |t|
    t.string "type", null: false
    t.integer "location_id"
    t.string "name"
    t.string "ip"
    t.float "decibels_limit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_appliances_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
