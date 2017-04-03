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

ActiveRecord::Schema.define(version: 20170313134544) do

  create_table "admins", force: :cascade do |t|
    t.string   "uname"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["uname"], name: "index_admins_on_uname", unique: true
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "pin"
    t.string   "email"
    t.string   "phno"
    t.text     "address"
    t.decimal  "cgpa"
    t.integer  "abacklog"
    t.boolean  "placed"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["pin"], name: "index_students_on_pin", unique: true
  end

end