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

ActiveRecord::Schema.define(version: 20151230182409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "skills", force: :cascade do |t|
    t.string "name", null: false
    t.string "title"
    t.text "description"
    t.boolean "active", default: false
    t.integer "tag_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "skills", ["name"], name: "index_skills_on_name", unique: true, using: :btree

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "phone"
    t.string "title"
    t.string "address"
    t.integer "user_id"
    t.integer "country_id"
    t.integer "city_id"
    t.string "pincode"
    t.integer "created_by"
    t.integer "updated_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teaching_periods", force: :cascade do |t|
    t.integer "trainer_id"
    t.integer "student_id"
    t.datetime "starts_at", default: '2015-12-31 01:48:45', null: false
    t.datetime "ends_at", default: '2015-12-31 01:48:45', null: false
    t.integer "status"
    t.string "entity_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trainers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "gender"
    t.string "title"
    t.integer "user_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.string "address"
    t.integer "country_id"
    t.integer "city_id"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "entity_type", default: "Student", null: false
    t.boolean "active", default: false
    t.integer "student_id"
    t.integer "trainer_id"
    t.integer "created_by"
    t.integer "updated_by"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["full_name"], name: "index_users_on_full_name", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
