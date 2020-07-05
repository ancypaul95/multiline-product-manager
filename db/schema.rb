# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_28_182258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_products", force: :cascade do |t|
    t.bigint "bookings_id"
    t.bigint "products_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bookings_id"], name: "index_booking_products_on_bookings_id"
    t.index ["products_id"], name: "index_booking_products_on_products_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "user_email"
    t.string "user_phone"
    t.string "user_note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "about_us"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "home_pages", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "product_title"
    t.string "product_desc"
    t.string "main_prod_title"
    t.string "main_prod_desc"
    t.string "banner_alert"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "quantity"
    t.string "name"
    t.integer "type"
    t.string "image_url"
    t.bigint "product_categories_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_categories_id"], name: "index_products_on_product_categories_id"
  end

  add_foreign_key "booking_products", "bookings", column: "bookings_id"
  add_foreign_key "booking_products", "products", column: "products_id"
  add_foreign_key "products", "product_categories", column: "product_categories_id"
end
