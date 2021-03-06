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

ActiveRecord::Schema.define(version: 2019_05_07_011858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carrier_clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carriers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "counter_documents", force: :cascade do |t|
    t.string "number"
    t.bigint "carrier_id"
    t.bigint "carrier_client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrier_client_id"], name: "index_counter_documents_on_carrier_client_id"
    t.index ["carrier_id"], name: "index_counter_documents_on_carrier_id"
  end

  create_table "counter_schedules", force: :cascade do |t|
    t.date "date"
    t.time "hour"
    t.bigint "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_counter_schedules_on_branch_id"
  end

  create_table "counter_service_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "counter_services", force: :cascade do |t|
    t.bigint "counter_service_type_id"
    t.bigint "user_id"
    t.bigint "counter_document_id"
    t.bigint "counter_schedule_id"
    t.bigint "service_status_id"
    t.text "user_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["counter_document_id"], name: "index_counter_services_on_counter_document_id"
    t.index ["counter_schedule_id"], name: "index_counter_services_on_counter_schedule_id"
    t.index ["counter_service_type_id"], name: "index_counter_services_on_counter_service_type_id"
    t.index ["service_status_id"], name: "index_counter_services_on_service_status_id"
    t.index ["user_id"], name: "index_counter_services_on_user_id"
  end

  create_table "service_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "counter_documents", "carrier_clients"
  add_foreign_key "counter_documents", "carriers"
  add_foreign_key "counter_schedules", "branches"
  add_foreign_key "counter_services", "counter_documents"
  add_foreign_key "counter_services", "counter_schedules"
  add_foreign_key "counter_services", "counter_service_types"
  add_foreign_key "counter_services", "service_statuses"
  add_foreign_key "counter_services", "users"
end
