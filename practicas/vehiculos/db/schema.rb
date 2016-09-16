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

ActiveRecord::Schema.define(version: 20160916011455) do

  create_table "agencies", force: :cascade do |t|
    t.string   "name"
    t.text     "addres"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "dni"
    t.string   "name"
    t.string   "last_name"
    t.text     "address"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.decimal  "price"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "vehicle_id"
    t.integer  "reservation_id"
    t.index ["reservation_id"], name: "index_details_on_reservation_id"
    t.index ["vehicle_id"], name: "index_details_on_vehicle_id"
  end

  create_table "garages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "reservation_date"
    t.date     "pick_up_date"
    t.date     "final_date"
    t.decimal  "total_price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "agency_id"
    t.integer  "client_id"
    t.index ["agency_id"], name: "index_reservations_on_agency_id"
    t.index ["client_id"], name: "index_reservations_on_client_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "register"
    t.string   "brand"
    t.string   "model"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "garage_id"
    t.index ["garage_id"], name: "index_vehicles_on_garage_id"
  end

end
