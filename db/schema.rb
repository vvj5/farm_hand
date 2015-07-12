# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150710174348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.string   "breed"
    t.integer  "farm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "animals", ["farm_id"], name: "index_animals_on_farm_id", using: :btree

  create_table "eggs", force: :cascade do |t|
    t.string   "color"
    t.integer  "quantity"
    t.integer  "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "eggs", ["animal_id"], name: "index_eggs_on_animal_id", using: :btree

  create_table "expenses", force: :cascade do |t|
    t.string   "name"
    t.integer  "amount"
    t.string   "category"
    t.integer  "farm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "expenses", ["farm_id"], name: "index_expenses_on_farm_id", using: :btree

  create_table "farms", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.integer  "quantity"
    t.integer  "amount"
    t.integer  "farm_id"
    t.integer  "egg_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "incomes", ["egg_id"], name: "index_incomes_on_egg_id", using: :btree
  add_index "incomes", ["farm_id"], name: "index_incomes_on_farm_id", using: :btree

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
    t.integer  "farm_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "weathers", force: :cascade do |t|
    t.integer  "high_temp"
    t.integer  "low_temp"
    t.integer  "wind_speed"
    t.time     "sunrise"
    t.time     "sunset"
    t.integer  "precipitation"
    t.integer  "farm_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "weathers", ["farm_id"], name: "index_weathers_on_farm_id", using: :btree

  add_foreign_key "animals", "farms"
  add_foreign_key "eggs", "animals"
  add_foreign_key "expenses", "farms"
  add_foreign_key "incomes", "eggs"
  add_foreign_key "incomes", "farms"
  add_foreign_key "weathers", "farms"
end
