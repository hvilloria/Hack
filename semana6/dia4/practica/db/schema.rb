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

ActiveRecord::Schema.define(version: 20160915195351) do

  create_table "agencies", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "dni"
    t.string   "name"
    t.string   "last_name"
    t.string   "phone"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "costs", force: :cascade do |t|
    t.decimal  "price"
    t.date     "date"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "garages", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_musics", force: :cascade do |t|
    t.string "name"
  end

  create_table "playlists", force: :cascade do |t|
    t.string  "name"
    t.string  "category"
    t.integer "user_id"
    t.integer "list_musics_id"
    t.index ["list_musics_id"], name: "index_playlists_on_list_musics_id"
    t.index ["user_id"], name: "index_playlists_on_user_id"
  end

  create_table "reservation_details", force: :cascade do |t|
    t.integer  "reservation_id"
    t.integer  "vehicle_id"
    t.decimal  "price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["reservation_id"], name: "index_reservation_details_on_reservation_id"
    t.index ["vehicle_id"], name: "index_reservation_details_on_vehicle_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date     "reservation_date"
    t.date     "pickup_date"
    t.date     "delivery_date"
    t.integer  "client_id"
    t.integer  "agency_id"
    t.decimal  "total"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["agency_id"], name: "index_reservations_on_agency_id"
    t.index ["client_id"], name: "index_reservations_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "register"
    t.string   "color"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "vehicle_type_id"
    t.index ["vehicle_type_id"], name: "index_vehicles_on_vehicle_type_id"
  end

end
