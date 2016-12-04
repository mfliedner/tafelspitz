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

ActiveRecord::Schema.define(version: 20161204185952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.integer  "restaurant_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "favorites", ["restaurant_id"], name: "index_favorites_on_restaurant_id", using: :btree
  add_index "favorites", ["user_id", "restaurant_id"], name: "index_favorites_on_user_id_and_restaurant_id", unique: true, using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.integer  "guest_id",      null: false
    t.integer  "restaurant_id", null: false
    t.datetime "date",          null: false
    t.integer  "guest_count",   null: false
    t.text     "requests"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "time",          null: false
  end

  add_index "reservations", ["guest_id"], name: "index_reservations_on_guest_id", using: :btree
  add_index "reservations", ["restaurant_id"], name: "index_reservations_on_restaurant_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.integer  "owner_id",    null: false
    t.text     "description", null: false
    t.string   "name",        null: false
    t.string   "address",     null: false
    t.integer  "price_range", null: false
    t.float    "lat"
    t.float    "lng"
    t.integer  "seats"
    t.string   "img_url"
    t.string   "phone"
    t.text     "menu"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "opening"
    t.integer  "closing"
    t.string   "mailto"
    t.string   "website"
  end

  add_index "restaurants", ["owner_id"], name: "index_restaurants_on_owner_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.integer  "restaurant_id", null: false
    t.datetime "date",          null: false
    t.integer  "rating",        null: false
    t.integer  "rate_food"
    t.integer  "rate_ambience"
    t.integer  "rate_service"
    t.integer  "rate_value"
    t.text     "body"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "nick_name"
  end

  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.string   "email",           null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree

end
