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

ActiveRecord::Schema.define(version: 20180328025600) do

  create_table "bills", force: :cascade do |t|
    t.string "doc"
    t.text "content"
    t.string "register_link"
    t.string "apr"
    t.text "time_horizon"
    t.decimal "per_10000", precision: 15, scale: 5
    t.string "bill_type"
    t.string "states"
    t.integer "channel_id"
    t.integer "platform_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "invest_count"
    t.string "invest_range"
    t.index ["channel_id"], name: "index_bills_on_channel_id"
    t.index ["platform_id"], name: "index_bills_on_platform_id"
  end

  create_table "channels", force: :cascade do |t|
    t.string "qq_group"
    t.string "qq_group_name"
    t.string "group_master_qq"
    t.string "phone_number"
    t.string "master_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "channel_id"
    t.integer "user_id"
    t.integer "platform_id"
    t.string "phone_num"
    t.string "investor_username"
    t.string "time_horizon"
    t.string "amount"
    t.string "alipay"
    t.string "alipay_name"
    t.string "qq_number"
    t.string "qq_name"
    t.string "screenshots"
    t.string "platform_username"
    t.string "status"
    t.string "password"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "expect_money"
    t.date "invest_date"
    t.string "invest_type"
    t.integer "bills_id"
    t.index ["bills_id"], name: "index_orders_on_bills_id"
    t.index ["channel_id"], name: "index_orders_on_channel_id"
    t.index ["platform_id"], name: "index_orders_on_platform_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "introduce"
    t.string "platform_type"
    t.string "level"
    t.string "logo"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "qq_number"
    t.string "qq_name"
    t.string "alipay"
    t.string "alipay_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
