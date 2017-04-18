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

ActiveRecord::Schema.define(version: 20170407231355) do

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email",                                default: "", null: false
    t.string   "encrypted_password",                   default: "", null: false
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
    t.text     "doing",                  limit: 65535
    t.text     "future_doing",           limit: 65535
    t.text     "trigger",                limit: 65535
    t.string   "start_time"
    t.string   "finish_time"
    t.text     "education_interest",     limit: 65535
    t.text     "future_work",            limit: 65535
    t.text     "specially",              limit: 65535
    t.text     "improve",                limit: 65535
    t.string   "hobby"
    t.string   "motto"
    t.integer  "roje"
    t.text     "outside",                limit: 65535
    t.text     "memo",                   limit: 65535
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
