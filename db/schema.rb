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

ActiveRecord::Schema.define(version: 20160307205252) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "balance",    default: 0, null: false
    t.integer  "user_id"
    t.integer  "bank_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "bic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_entries", force: :cascade do |t|
    t.string   "description"
    t.integer  "amount"
    t.integer  "account_from_id"
    t.integer  "account_to_id"
    t.integer  "issuer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
