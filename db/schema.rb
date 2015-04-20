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

ActiveRecord::Schema.define(version: 20150419224139) do

  create_table "produce_seasonalities", force: true do |t|
    t.integer "produce_id"
    t.integer "seasonality_id"
  end

  create_table "produces", force: true do |t|
    t.string   "name"
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasonalities", force: true do |t|
    t.string   "location"
    t.integer  "january_id"
    t.integer  "february_id"
    t.integer  "march_id"
    t.integer  "april_id"
    t.integer  "may_id"
    t.integer  "june_id"
    t.integer  "july_id"
    t.integer  "august_id"
    t.integer  "september_id"
    t.integer  "october_id"
    t.integer  "november_id"
    t.integer  "december_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seasonalities", ["april_id"], name: "index_seasonalities_on_april_id"
  add_index "seasonalities", ["august_id"], name: "index_seasonalities_on_august_id"
  add_index "seasonalities", ["december_id"], name: "index_seasonalities_on_december_id"
  add_index "seasonalities", ["february_id"], name: "index_seasonalities_on_february_id"
  add_index "seasonalities", ["january_id"], name: "index_seasonalities_on_january_id"
  add_index "seasonalities", ["july_id"], name: "index_seasonalities_on_july_id"
  add_index "seasonalities", ["june_id"], name: "index_seasonalities_on_june_id"
  add_index "seasonalities", ["march_id"], name: "index_seasonalities_on_march_id"
  add_index "seasonalities", ["may_id"], name: "index_seasonalities_on_may_id"
  add_index "seasonalities", ["november_id"], name: "index_seasonalities_on_november_id"
  add_index "seasonalities", ["october_id"], name: "index_seasonalities_on_october_id"
  add_index "seasonalities", ["september_id"], name: "index_seasonalities_on_september_id"

end
