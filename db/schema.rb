# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_22_230702) do
  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.string "plant_name"
    t.string "description"
    t.string "image"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.integer "plant_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_listings_on_plant_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "common_name"
    t.string "scientific_name"
    t.string "cycle"
    t.string "watering"
    t.string "sunlight"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "listings", "plants"
  add_foreign_key "listings", "users"
end
