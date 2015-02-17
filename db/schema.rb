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

ActiveRecord::Schema.define(version: 20150217002430) do

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

  create_table "surveyresults", force: true do |t|
    t.integer  "age"
    t.boolean  "enrolled"
    t.integer  "allowance"
    t.integer  "salary"
    t.boolean  "freq_1"
    t.boolean  "freq_2"
    t.boolean  "freq_3"
    t.boolean  "freq_4"
    t.boolean  "freq_5"
    t.boolean  "freq_6"
    t.boolean  "place_1"
    t.boolean  "place_2"
    t.boolean  "place_3"
    t.boolean  "place_4"
    t.boolean  "place_5"
    t.boolean  "place_6"
    t.boolean  "place_7"
    t.boolean  "place_8"
    t.integer  "much_1"
    t.boolean  "flavor_1"
    t.boolean  "flavor_2"
    t.integer  "willingness"
    t.integer  "much_2"
    t.integer  "qual_1"
    t.integer  "qual_2"
    t.integer  "qual_3"
    t.integer  "qual_4"
    t.integer  "qual_5"
    t.integer  "qual_6"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "flavor_3"
  end

end
