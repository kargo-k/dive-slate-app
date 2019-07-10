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

ActiveRecord::Schema.define(version: 2019_07_10_182713) do

  create_table "dive_equipments", force: :cascade do |t|
    t.integer "dive_id"
    t.integer "equipment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dive_marineanimals", force: :cascade do |t|
    t.integer "dive_id"
    t.integer "marineanimal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dives", force: :cascade do |t|
    t.integer "user_id"
    t.integer "diveshop_id"
    t.integer "divesite_id"
    t.string "date"
    t.string "time"
    t.integer "water_T"
    t.integer "air_T"
    t.integer "depth"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diveshops", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "divesites", force: :cascade do |t|
    t.string "name"
    t.string "latitude"
    t.string "longitude"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marineanimals", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "certification"
    t.integer "age"
    t.string "country"
    t.integer "total_dives"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
