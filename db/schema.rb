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

ActiveRecord::Schema.define(version: 20171221140016) do

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "display_name", null: false
    t.string "street", null: false
    t.string "area", null: false
    t.string "city", null: false
    t.string "country", null: false
    t.string "tin_number", null: false
    t.string "dl_number_one"
    t.string "dl_number_two"
    t.string "dl_number_three"
    t.string "gst_number", null: false
    t.string "cst_number", null: false
    t.string "lst_number", null: false
    t.string "pan_number", null: false
    t.bigint "credit_limit"
    t.integer "credit_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "store_type"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "username", null: false
    t.string "password_digest", null: false
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name"
    t.string "phone", null: false
    t.integer "admin", null: false
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_users_on_account_id"
  end

  add_foreign_key "users", "accounts"
end
