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

ActiveRecord::Schema.define(version: 20161009130410) do

  create_table "activity_branches", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "answers", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "question_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "cases", force: :cascade do |t|
    t.integer  "category_case_id",     limit: 4
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
    t.string   "description",          limit: 255
    t.integer  "supplier_id",          limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "cases", ["category_case_id"], name: "index_cases_on_category_case_id", using: :btree
  add_index "cases", ["supplier_id"], name: "index_cases_on_supplier_id", using: :btree

  create_table "category_cases", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "cios", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.string   "phone",                limit: 255
    t.string   "email",                limit: 255
    t.string   "nick",                 limit: 255
    t.integer  "company_id",           limit: 4
    t.string   "picture_file_name",    limit: 255
    t.string   "picture_content_type", limit: 255
    t.integer  "picture_file_size",    limit: 4
    t.datetime "picture_updated_at"
    t.boolean  "status"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_index "cios", ["company_id"], name: "index_cios_on_company_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "state",             limit: 255
    t.string   "city",              limit: 255
    t.string   "logo_file_name",    limit: 255
    t.string   "logo_content_type", limit: 255
    t.integer  "logo_file_size",    limit: 4
    t.datetime "logo_updated_at"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "logo_file_name",    limit: 255
    t.string   "logo_content_type", limit: 255
    t.integer  "logo_file_size",    limit: 4
    t.datetime "logo_updated_at"
    t.boolean  "brief"
    t.boolean  "perfil"
    t.boolean  "case"
    t.string   "name",              limit: 255
    t.string   "event_url",         limit: 255
    t.boolean  "unify"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "description", limit: 255
    t.boolean  "hide"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.string   "playlist",           limit: 255
    t.string   "logo_file_name",     limit: 255
    t.string   "logo_content_type",  limit: 255
    t.integer  "logo_file_size",     limit: 4
    t.datetime "logo_updated_at"
    t.string   "case_file_name",     limit: 255
    t.string   "case_content_type",  limit: 255
    t.integer  "case_file_size",     limit: 4
    t.datetime "case_updated_at"
    t.string   "brief_file_name",    limit: 255
    t.string   "brief_content_type", limit: 255
    t.integer  "brief_file_size",    limit: 4
    t.datetime "brief_updated_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "suppliers", ["user_id"], name: "index_suppliers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role_id",                limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  add_foreign_key "answers", "questions"
  add_foreign_key "cases", "category_cases"
  add_foreign_key "cases", "suppliers"
  add_foreign_key "cios", "companies"
  add_foreign_key "suppliers", "users"
  add_foreign_key "users", "roles"
end
