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

ActiveRecord::Schema.define(version: 20161025194712) do

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "state_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id", using: :btree

  create_table "configurations", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "title",      limit: 255
    t.boolean  "mark"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "configurations", ["user_id"], name: "index_configurations_on_user_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 255
    t.string   "institute",  limit: 255
    t.date     "begin_date"
    t.date     "end_date"
    t.boolean  "unfinished"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "courses", ["user_id"], name: "index_courses_on_user_id", using: :btree

  create_table "idioms", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "title",      limit: 255
    t.integer  "level",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "idioms", ["user_id"], name: "index_idioms_on_user_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.string   "title",             limit: 255
    t.text     "description",       limit: 65535
    t.string   "logo_file_name",    limit: 255
    t.string   "logo_content_type", limit: 255
    t.integer  "logo_file_size",    limit: 4
    t.datetime "logo_updated_at"
    t.string   "link_app",          limit: 255
    t.string   "link_github",       limit: 255
    t.string   "highlight",         limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "order",             limit: 4
    t.boolean  "head"
    t.boolean  "open_source"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "rich_rich_files", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rich_file_file_name",    limit: 255
    t.string   "rich_file_content_type", limit: 255
    t.integer  "rich_file_file_size",    limit: 4
    t.datetime "rich_file_updated_at"
    t.string   "owner_type",             limit: 255
    t.integer  "owner_id",               limit: 4
    t.text     "uri_cache",              limit: 65535
    t.string   "simplified_type",        limit: 255,   default: "file"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "title",      limit: 255
    t.integer  "level",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "skills", ["user_id"], name: "index_skills_on_user_id", using: :btree

  create_table "states", force: :cascade do |t|
    t.string   "initials",   limit: 255
    t.string   "name",       limit: 255
    t.integer  "capital_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "states", ["capital_id"], name: "index_states_on_capital_id", using: :btree

  create_table "testimonials", force: :cascade do |t|
    t.integer  "owner_user",   limit: 4
    t.integer  "comment_user", limit: 4
    t.string   "description",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "testimonials", ["comment_user"], name: "index_testimonials_on_comment_user", using: :btree
  add_index "testimonials", ["owner_user"], name: "index_testimonials_on_owner_user", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "name",                   limit: 255
    t.string   "occupation",             limit: 255
    t.string   "photo_file_name",        limit: 255
    t.string   "photo_content_type",     limit: 255
    t.integer  "photo_file_size",        limit: 4
    t.datetime "photo_updated_at"
    t.string   "link_facebook",          limit: 255
    t.string   "link_site",              limit: 255
    t.string   "link_google",            limit: 255
    t.string   "link_github",            limit: 255
    t.string   "link_linkedin",          limit: 255
    t.integer  "state_id",               limit: 4
    t.integer  "city_id",                limit: 4
    t.text     "about_me",               limit: 65535
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "role_id",                limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  create_table "works", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.string   "role",        limit: 255
    t.string   "company",     limit: 255
    t.date     "begin_date"
    t.date     "end_date"
    t.boolean  "actual"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "link",        limit: 255
  end

  add_index "works", ["user_id"], name: "index_works_on_user_id", using: :btree

  add_foreign_key "cities", "states"
  add_foreign_key "configurations", "users"
  add_foreign_key "courses", "users"
  add_foreign_key "idioms", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "skills", "users"
  add_foreign_key "users", "roles"
  add_foreign_key "works", "users"
end
