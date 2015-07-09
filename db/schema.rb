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

ActiveRecord::Schema.define(version: 20150707223615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.integer  "breed_id"
    t.integer  "egg_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "breeds", force: :cascade do |t|
    t.string   "name"
    t.integer  "egg_id"
    t.integer  "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "breeds", ["animal_id"], name: "index_breeds_on_animal_id", using: :btree

  create_table "eggs", force: :cascade do |t|
    t.string   "color_id"
    t.integer  "price"
    t.integer  "animal_id"
    t.integer  "income_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "eggs", ["animal_id"], name: "index_eggs_on_animal_id", using: :btree
  add_index "eggs", ["income_id"], name: "index_eggs_on_income_id", using: :btree

  create_table "expenses", force: :cascade do |t|
    t.string   "title"
    t.integer  "amount"
    t.integer  "farm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "expenses", ["farm_id"], name: "index_expenses_on_farm_id", using: :btree

  create_table "farms", force: :cascade do |t|
    t.integer  "animal_id"
    t.integer  "income_id"
    t.integer  "expense_id"
    t.integer  "weather_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.integer  "egg_id"
    t.integer  "quantity_sold"
    t.integer  "amount"
    t.integer  "farm_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "incomes", ["farm_id"], name: "index_incomes_on_farm_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.integer  "zipcode"
    t.integer  "user_id"
    t.integer  "weather_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.integer  "location_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "users", ["location_id"], name: "index_users_on_location_id", using: :btree

  create_table "weathers", force: :cascade do |t|
    t.integer  "high_temp"
    t.integer  "low_temp"
    t.integer  "wind_speed"
    t.integer  "precipitation"
    t.integer  "sunrise"
    t.integer  "sunset"
    t.integer  "location_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "weathers", ["location_id"], name: "index_weathers_on_location_id", using: :btree

  add_foreign_key "breeds", "animals"
  add_foreign_key "eggs", "animals"
  add_foreign_key "eggs", "incomes"
  add_foreign_key "expenses", "farms"
  add_foreign_key "incomes", "farms"
  add_foreign_key "users", "locations"
  add_foreign_key "weathers", "locations"
end
