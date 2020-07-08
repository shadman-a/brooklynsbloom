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

ActiveRecord::Schema.define(version: 2020_07_08_030657) do

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "address"
    t.string "img_url"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer "buyer_id", null: false
    t.integer "plant_id", null: false
    t.boolean "purchased"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_id"], name: "index_carts_on_buyer_id"
    t.index ["plant_id"], name: "index_carts_on_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "size"
    t.integer "price"
    t.integer "quantity"
    t.string "img_url"
    t.integer "shop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_id"], name: "index_plants_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "carts", "buyers"
  add_foreign_key "carts", "plants"
  add_foreign_key "plants", "shops"
end
