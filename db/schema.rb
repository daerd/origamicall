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

ActiveRecord::Schema.define(version: 201412241504) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "number", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "name",                        null: false
    t.boolean "white_label", default: false, null: false
    t.string  "logo"
    t.string  "logo_mini"
    t.boolean "no_logo",     default: false, null: false
    t.string  "css_file"
    t.string  "js_file"
  end

  create_table "users_products", force: :cascade do |t|
    t.integer "users_id",    null: false
    t.integer "products_id", null: false
  end

  create_table "users_services", force: :cascade do |t|
    t.integer "users_id",    null: false
    t.integer "services_id", null: false
  end

end
