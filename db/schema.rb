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

ActiveRecord::Schema.define(version: 20170604192942) do

  create_table "education_backgrounds", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "highest_education_level"
    t.string   "university_of_highest_education_level"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "family_backgrounds", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "my_current_occupaion"
    t.string   "father_current_occupation"
    t.string   "mother_current_occupation"
    t.integer  "number_of_siblings"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "personal_backgrounds", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "date_of_birth"
    t.integer  "age"
    t.string   "gender"
    t.string   "email"
    t.string   "phone"
    t.string   "home_addess"
    t.string   "current_employer"
    t.string   "current_job_title"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sibling_backgrounds", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "sibling_name"
    t.integer  "sibling_age"
    t.string   "sibling_marital_status"
    t.string   "sibling_residence"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
