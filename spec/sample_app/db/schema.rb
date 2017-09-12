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

ActiveRecord::Schema.define(version: 20170823195515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_codhab_person_staff_time_sheets", force: :cascade do |t|
    t.integer "time_sheet_id"
    t.integer "vocation_id"
    t.text "allowance_ids", array: true
    t.integer "staff_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "core_alerts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.boolean "priority", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "core_group_permissions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "permission_ids", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "core_navs", force: :cascade do |t|
    t.string "label"
    t.text "description"
    t.integer "father_id"
    t.boolean "status", default: true
    t.integer "group_permission_id"
    t.text "permission_ids", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "core_notifications", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "content"
    t.boolean "read", default: false
    t.date "read_date"
    t.boolean "priority", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "core_permissions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "code"
    t.integer "system_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "core_posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.boolean "status", default: true
    t.boolean "special", default: true
    t.integer "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "core_systems", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "core_user_groups", force: :cascade do |t|
    t.integer "group_id"
    t.integer "user_id"
    t.integer "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "core_user_permissions", force: :cascade do |t|
    t.integer "permission_id"
    t.integer "user_id"
    t.integer "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_allowances", force: :cascade do |t|
    t.date "date"
    t.integer "staff_id"
    t.boolean "status", default: false
    t.integer "leader_id"
    t.text "leader_observation"
    t.text "staff_observation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_contract_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_education_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_jobs", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.boolean "status", default: false
    t.float "salary"
    t.string "function_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_sectors", force: :cascade do |t|
    t.string "name"
    t.string "acron"
    t.string "prefex"
    t.integer "father_id"
    t.integer "responsible_id"
    t.boolean "status", default: true
    t.string "code"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_staff_mirrors", force: :cascade do |t|
    t.integer "staff_id"
    t.string "name"
    t.string "rg"
    t.string "rg_org"
    t.string "blood_type"
    t.date "born"
    t.string "avatar"
    t.string "personal_image"
    t.string "branch_line"
    t.string "curriculum"
    t.string "email"
    t.time "start_hour"
    t.time "end_hour"
    t.date "contract_date"
    t.date "shutdown_date"
    t.boolean "wekeend_access", default: false
    t.boolean "status", default: false
    t.boolean "administrator", default: false
    t.integer "gender_id"
    t.integer "job_id"
    t.string "private_email"
    t.integer "civil_state_id"
    t.string "birth_place"
    t.integer "born_uf_id"
    t.integer "contract_type_id"
    t.string "address"
    t.string "address_complement"
    t.string "burgh"
    t.integer "state_id"
    t.integer "city_id"
    t.string "cep"
    t.string "telephone"
    t.string "celphone"
    t.string "ctps_number"
    t.string "ctps_serial"
    t.integer "ctps_uf_id"
    t.string "pis_pasep_number"
    t.date "pis_pasep_date"
    t.string "electoral_title_number"
    t.string "electoral_title_zone"
    t.string "electoral_title_section"
    t.integer "electoral_title_uf_id"
    t.string "bank_number"
    t.string "bank_agency_number"
    t.string "bank_account_number"
    t.string "spouse_name"
    t.integer "education_background_id"
    t.string "graduation"
    t.string "resolution"
    t.date "resolution_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_staffs", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "rg_org"
    t.string "blood_type"
    t.date "born"
    t.string "avatar"
    t.string "personal_image"
    t.string "branch_line"
    t.string "curriculum"
    t.string "email"
    t.time "start_hour"
    t.time "end_hour"
    t.date "contract_date"
    t.date "shutdown_date"
    t.boolean "wekeend_access", default: false
    t.boolean "status", default: false
    t.boolean "administrator", default: false
    t.integer "gender_id"
    t.string "password"
    t.integer "job_id"
    t.boolean "terms_use", default: false
    t.boolean "introduce", default: false
    t.string "private_email"
    t.integer "civil_state_id"
    t.string "birth_place"
    t.integer "born_uf_id"
    t.integer "contract_type_id"
    t.string "address"
    t.string "address_complement"
    t.string "burgh"
    t.integer "state_id"
    t.integer "city_id"
    t.string "cep"
    t.string "telephone"
    t.string "celphone"
    t.string "ctps_number"
    t.string "ctps_serial"
    t.integer "ctps_uf_id"
    t.string "pis_pasep_number"
    t.date "pis_pasep_date"
    t.string "electoral_title_number"
    t.string "electoral_title_zone"
    t.string "electoral_title_section"
    t.integer "electoral_title_uf_id"
    t.string "bank_number"
    t.string "bank_agency_number"
    t.string "bank_account_number"
    t.string "spouse_name"
    t.integer "education_background_id"
    t.string "graduation"
    t.string "mobile_user_token"
    t.string "mobile_push_token"
    t.string "resolution"
    t.date "resolution_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_time_sheets", force: :cascade do |t|
    t.integer "month"
    t.integer "year"
    t.integer "creator_id"
    t.text "exception_days"
    t.string "exception_days_text"
    t.text "exception_before_noon"
    t.string "exception_before_noon_text"
    t.text "exception_afternoon"
    t.string "exception_afternoon_text"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "person_vocations", force: :cascade do |t|
    t.date "started_at"
    t.date "ended_at"
    t.integer "assignment"
    t.integer "period"
    t.boolean "enjoy", default: false
    t.integer "staff_id"
    t.boolean "advance_money", default: false
    t.integer "leader_id"
    t.text "leader_observation"
    t.boolean "leader_authorize", default: false
    t.boolean "canceled", default: false
    t.date "canceled_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
