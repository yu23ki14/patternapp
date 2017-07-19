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

ActiveRecord::Schema.define(version: 20170719025218) do

  create_table "objectives", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.string   "title",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "no0"
    t.integer  "no1"
    t.integer  "no2"
    t.integer  "no3"
    t.integer  "no4"
    t.integer  "no5"
    t.integer  "no6"
    t.integer  "no7"
    t.integer  "no8"
    t.integer  "no9"
    t.integer  "no10"
    t.integer  "no11"
    t.integer  "no12"
    t.integer  "no13"
    t.integer  "no14"
    t.integer  "no15"
    t.integer  "no16"
    t.integer  "no17"
    t.integer  "no18"
    t.integer  "no19"
    t.integer  "no20"
    t.integer  "no21"
    t.integer  "no22"
    t.integer  "no23"
    t.integer  "no24"
    t.integer  "no25"
    t.integer  "no26"
    t.integer  "no27"
    t.integer  "no28"
    t.integer  "no29"
    t.integer  "no30"
    t.integer  "no31"
    t.integer  "no32"
    t.integer  "no33"
    t.integer  "no34"
    t.integer  "no35"
    t.integer  "no36"
    t.integer  "no37"
    t.integer  "no38"
    t.integer  "no39"
  end

  create_table "patterns", force: :cascade do |t|
    t.text    "title",    null: false
    t.integer "no",       null: false
    t.text    "name",     null: false
    t.text    "solution", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "title"
    t.integer  "no0"
    t.integer  "no1"
    t.integer  "no2"
    t.integer  "no3"
    t.integer  "no4"
    t.integer  "no5"
    t.integer  "no6"
    t.integer  "no7"
    t.integer  "no8"
    t.integer  "no9"
    t.integer  "no10"
    t.integer  "no11"
    t.integer  "no12"
    t.integer  "no13"
    t.integer  "no14"
    t.integer  "no15"
    t.integer  "no16"
    t.integer  "no17"
    t.integer  "no18"
    t.integer  "no19"
    t.integer  "no20"
    t.integer  "no21"
    t.integer  "no22"
    t.integer  "no23"
    t.integer  "no24"
    t.integer  "no25"
    t.integer  "no26"
    t.integer  "no27"
    t.integer  "no28"
    t.integer  "no29"
    t.integer  "no30"
    t.integer  "no31"
    t.integer  "no32"
    t.integer  "no33"
    t.integer  "no34"
    t.integer  "no35"
    t.integer  "no36"
    t.integer  "no37"
    t.integer  "no38"
    t.integer  "no39"
  end

  create_table "sample", id: false, force: :cascade do |t|
    t.integer "id"
    t.string  "name", limit: 256
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
