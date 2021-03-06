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

ActiveRecord::Schema.define(version: 20160225194220) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ministries", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address"
    t.string   "phone"
    t.string   "picture"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "password_digest"
    t.integer  "volunteer_id"
    t.integer  "mission_id"
    t.integer  "mission_assignment_id"
  end

  add_index "ministries", ["email"], name: "index_ministries_on_email", unique: true, using: :btree
  add_index "ministries", ["reset_password_token"], name: "index_ministries_on_reset_password_token", unique: true, using: :btree

  create_table "mission_assignments", force: :cascade do |t|
    t.integer  "mission_id"
    t.integer  "ministry_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "volunteer_id"
  end

  create_table "missions", force: :cascade do |t|
    t.integer  "church_id"
    t.integer  "volunteer_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "name"
    t.string   "location"
    t.text     "description"
    t.integer  "ministry_id"
    t.integer  "mission_assignment_id"
  end

  create_table "volunteers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "address"
    t.string   "picture"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "phone"
    t.string   "password_digest"
    t.integer  "ministry_id"
    t.integer  "mission_id"
    t.integer  "mission_assignment_id"
  end

  add_index "volunteers", ["email"], name: "index_volunteers_on_email", unique: true, using: :btree
  add_index "volunteers", ["reset_password_token"], name: "index_volunteers_on_reset_password_token", unique: true, using: :btree

end
