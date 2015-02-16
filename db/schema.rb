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

ActiveRecord::Schema.define(version: 20150216150413) do

  create_table "departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "initiatives", force: true do |t|
    t.integer  "Keypi_id"
    t.decimal  "operating_cost"
    t.decimal  "capital_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "initiatives", ["Keypi_id"], name: "index_initiatives_on_Keypi_id"

  create_table "keypis", force: true do |t|
    t.integer  "Perspective_id"
    t.integer  "Department_id"
    t.text     "measure"
    t.string   "good"
    t.string   "warning"
    t.string   "bad"
    t.decimal  "value"
    t.decimal  "good_d"
    t.decimal  "warning_d"
    t.decimal  "bad_d"
    t.integer  "good_m"
    t.integer  "warning_m"
    t.integer  "bad_m"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "keypis", ["Department_id"], name: "index_keypis_on_Department_id"
  add_index "keypis", ["Perspective_id"], name: "index_keypis_on_Perspective_id"

  create_table "perspectives", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
