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

ActiveRecord::Schema.define(version: 20160218121219) do

  create_table "fittings", force: :cascade do |t|
    t.string   "typo",                    null: false
    t.integer  "sub_typo",   default: 0
    t.integer  "wattage",    default: 10
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "infrastructures", force: :cascade do |t|
    t.float    "area",                         null: false
    t.float    "rate_per_unit", default: 10.0
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "installations", force: :cascade do |t|
    t.integer  "infrastructure_id"
    t.integer  "fitting_id"
    t.integer  "quantity",          null: false
    t.float    "running_time",      null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "installations", ["fitting_id"], name: "index_installations_on_fitting_id"
  add_index "installations", ["infrastructure_id"], name: "index_installations_on_infrastructure_id"

end
