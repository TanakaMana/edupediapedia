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

ActiveRecord::Schema.define(version: 20170420004811) do

  create_table "roje_projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "project_name"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_roje_projects_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string   "university"
    t.string   "faculty"
    t.string   "department"
    t.integer  "year"
    t.string   "birthplace"
    t.integer  "location"
    t.integer  "team"
    t.integer  "position"
    t.string   "doing"
    t.string   "future_doing"
    t.string   "trigger"
    t.string   "start_time"
    t.string   "finish_time"
    t.string   "education_interest"
    t.string   "future_work"
    t.string   "specially"
    t.string   "improve"
    t.string   "hobby"
    t.string   "motto"
    t.integer  "roje"
    t.string   "outside"
    t.string   "memo"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
