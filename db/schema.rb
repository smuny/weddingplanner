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

ActiveRecord::Schema.define(version: 20190327143149) do

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.integer "user_id"
    t.integer "wedding_venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caters", force: :cascade do |t|
    t.string "name"
    t.string "packages"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "phone_number", limit: 10
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wedding_caters", force: :cascade do |t|
    t.integer "wedding_venue_id"
    t.integer "cater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wedding_venues", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "cost"
    t.string "full_bar"
    t.string "guest_accommodation"
    t.string "wedding_style"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
