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

ActiveRecord::Schema.define(version: 20180517020427) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "content", limit: 4294967295
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "abstract"
    t.boolean "push_to_baidu", default: true
    t.string "topic"
    t.string "status"
  end

  create_table "bills", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "doc"
    t.text "content", limit: 4294967295
    t.string "register_link"
    t.string "apr"
    t.text "time_horizon"
    t.decimal "per_10000", precision: 15, scale: 5
    t.string "bill_type"
    t.string "states"
    t.bigint "channel_id"
    t.bigint "platform_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "invest_count"
    t.string "invest_range"
    t.string "bill_name"
    t.index ["channel_id"], name: "index_bills_on_channel_id"
    t.index ["platform_id"], name: "index_bills_on_platform_id"
  end

  create_table "channels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "qq_group"
    t.string "qq_group_name"
    t.string "group_master_qq"
    t.string "phone_number"
    t.string "master_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "channel_id"
    t.bigint "user_id"
    t.bigint "platform_id"
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
    t.bigint "bill_id"
    t.index ["bill_id"], name: "index_orders_on_bill_id"
    t.index ["channel_id"], name: "index_orders_on_channel_id"
    t.index ["platform_id"], name: "index_orders_on_platform_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "platforms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "introduce", limit: 4294967295
    t.string "platform_type"
    t.string "level"
    t.string "logo"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "password"
    t.string "qq_number"
    t.string "qq_name"
    t.string "alipay"
    t.string "alipay_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bills", "channels"
  add_foreign_key "bills", "platforms"
  add_foreign_key "orders", "bills"
  add_foreign_key "orders", "channels"
  add_foreign_key "orders", "platforms"
  add_foreign_key "orders", "users"
end
