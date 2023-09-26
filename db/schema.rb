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

ActiveRecord::Schema[7.0].define(version: 2023_09_26_134325) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matchings", force: :cascade do |t|
    t.integer "rank"
    t.bigint "request_id", null: false
    t.bigint "partner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["partner_id"], name: "index_matchings_on_partner_id"
    t.index ["request_id"], name: "index_matchings_on_request_id"
  end

  create_table "partners", force: :cascade do |t|
    t.boolean "is_wood"
    t.boolean "is_carpet"
    t.boolean "is_tiles"
    t.string "lat"
    t.string "lon"
    t.integer "operating_radius"
    t.decimal "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.boolean "is_wood"
    t.boolean "is_carpet"
    t.boolean "is_tiles"
    t.string "lat"
    t.string "lon"
    t.decimal "floor_surface"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_requests_on_customer_id"
  end

  add_foreign_key "matchings", "partners"
  add_foreign_key "matchings", "requests"
  add_foreign_key "requests", "customers"
end
