# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_17_145132) do
  create_table "companies", charset: "utf8mb3", collation: "utf8mb3_unicode_ci", force: :cascade do |t|
    t.string "Ctitle"
    t.boolean "trimed"
    t.boolean "GrowersCup"
    t.boolean "NaturesPath"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", charset: "utf8mb3", collation: "utf8mb3_unicode_ci", force: :cascade do |t|
    t.text "departmentDescription"
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_departments_on_company_id"
  end

  create_table "employees", charset: "utf8mb3", collation: "utf8mb3_unicode_ci", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "department_id", null: false
    t.text "employeeName"
    t.text "employeeEmail"
    t.text "employeeMobile"
    t.date "employeeStartDate"
    t.date "employeeEndDate"
    t.boolean "employeeStatus"
    t.text "employeeComments"
    t.text "carNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["role_id"], name: "index_employees_on_role_id"
  end

  create_table "roles", charset: "utf8mb3", collation: "utf8mb3_unicode_ci", force: :cascade do |t|
    t.boolean "admin"
    t.boolean "salesman"
    t.boolean "accountant"
    t.boolean "storekeeper"
    t.boolean "designer"
    t.boolean "imports"
    t.boolean "constractions"
    t.boolean "headofDesign"
    t.boolean "headofSales"
    t.boolean "headofStorehouse"
    t.boolean "headofImports"
    t.boolean "headofConstractions"
    t.string "roleDescription"
    t.boolean "printer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb3", collation: "utf8mb3_unicode_ci", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["last_name", "email", "phone_number"], name: "index_users_on_email_phone_number_last_name", unique: true
  end

  add_foreign_key "departments", "companies"
  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "roles"
end
