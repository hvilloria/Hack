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

ActiveRecord::Schema.define(version: 20161126212736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_days", force: :cascade do |t|
    t.date     "schedule",         null: false
    t.integer  "status"
    t.integer  "position"
    t.integer  "academic_week_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "day_id"
    t.index ["academic_week_id"], name: "index_academic_days_on_academic_week_id", using: :btree
    t.index ["day_id"], name: "index_academic_days_on_day_id", using: :btree
  end

  create_table "academic_notes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "author"
    t.date     "post"
    t.integer  "academic_day_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["academic_day_id"], name: "index_academic_notes_on_academic_day_id", using: :btree
    t.index ["user_id"], name: "index_academic_notes_on_user_id", using: :btree
  end

  create_table "academic_weeks", force: :cascade do |t|
    t.integer  "position",     null: false
    t.integer  "promotion_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "week_id"
    t.index ["promotion_id"], name: "index_academic_weeks_on_promotion_id", using: :btree
    t.index ["week_id"], name: "index_academic_weeks_on_week_id", using: :btree
  end

  create_table "blackdays", force: :cascade do |t|
    t.string   "name",         null: false
    t.date     "day",          null: false
    t.integer  "promotion_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["promotion_id"], name: "index_blackdays_on_promotion_id", using: :btree
  end

  create_table "days", force: :cascade do |t|
    t.string   "content",    null: false
    t.integer  "position",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "week_id"
    t.index ["week_id"], name: "index_days_on_week_id", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "author"
    t.date     "post_date"
    t.integer  "academic_note_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "day_id"
    t.index ["academic_note_id"], name: "index_notes_on_academic_note_id", using: :btree
    t.index ["day_id"], name: "index_notes_on_day_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "username",   null: false
    t.string   "password",   null: false
    t.string   "email",      null: false
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "promotions", force: :cascade do |t|
    t.string   "name",       null: false
    t.date     "start",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "type_of",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "last_name"
    t.string   "dni"
    t.integer  "role_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

  create_table "weeks", force: :cascade do |t|
    t.string   "content",    null: false
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "academic_days", "academic_weeks"
  add_foreign_key "academic_days", "days"
  add_foreign_key "academic_weeks", "promotions"
  add_foreign_key "academic_weeks", "weeks"
  add_foreign_key "blackdays", "promotions"
  add_foreign_key "days", "weeks"
  add_foreign_key "notes", "days"
  add_foreign_key "profiles", "users"
  add_foreign_key "users", "roles"
end
