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

ActiveRecord::Schema.define(version: 20160305013219) do

  create_table "applications", force: :cascade do |t|
    t.date     "date",       null: false
    t.text     "symptom",    null: false
    t.text     "comment"
    t.integer  "user_id"
    t.integer  "nursery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "status"
  end

  add_index "applications", ["date", "user_id", "nursery_id"], name: "index_applications_on_date_and_user_id_and_nursery_id"
  add_index "applications", ["nursery_id"], name: "index_applications_on_nursery_id"
  add_index "applications", ["user_id"], name: "index_applications_on_user_id"

  create_table "nurseries", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "business_hours"
    t.integer  "capacity"
    t.text     "condition"
    t.string   "fee"
    t.text     "things"
    t.text     "medical_system"
    t.text     "comment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_id",         null: false
    t.string   "password",        null: false
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "phone"
    t.string   "child_name"
    t.date     "child_birthdate"
    t.integer  "child_gender"
    t.text     "child_comment"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["user_id"], name: "index_users_on_user_id", unique: true

end
