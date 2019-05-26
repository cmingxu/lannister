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

ActiveRecord::Schema.define(version: 2019_05_26_135737) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "province"
    t.string "city"
    t.string "region"
    t.string "phone"
    t.boolean "default"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "product_id"
    t.integer "quantity"
    t.float "total_price"
    t.integer "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "user_id"
    t.text "desc"
    t.text "short_desc"
    t.string "state"
    t.decimal "price", precision: 10
    t.decimal "discount_price", precision: 10
    t.integer "quantity"
    t.integer "quantity_remain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "contact_mobile"
    t.string "contact_name"
    t.string "contact_address"
    t.integer "user_id"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
