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

ActiveRecord::Schema.define(version: 20180819110942) do

  create_table "incident_details", force: :cascade do |t|
    t.integer  "incident_id",      limit: 4
    t.string   "type_of_incident", limit: 255,   default: "--- []\n"
    t.text     "people_involved",  limit: 65535
    t.text     "other_observers",  limit: 65535
    t.datetime "date_and_time"
    t.string   "location",         limit: 255
    t.string   "other_location",   limit: 255
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  add_index "incident_details", ["incident_id"], name: "index_incident_details_on_incident_id", using: :btree

  create_table "incidents", force: :cascade do |t|
    t.text     "description", limit: 65535
    t.string   "image",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "incident_id", limit: 4
    t.string   "name",        limit: 255
    t.string   "email",       limit: 255
    t.string   "role",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "users", ["incident_id"], name: "index_users_on_incident_id", using: :btree

  add_foreign_key "incident_details", "incidents"
  add_foreign_key "users", "incidents"
end
