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

ActiveRecord::Schema[8.0].define(version: 2026_01_22_133426) do
  create_table "accounts", force: :cascade do |t|
    t.string "accountType"
    t.string "name"
    t.integer "balance"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "budgets", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "categories_id", null: false
    t.decimal "limit_amount"
    t.string "month"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_budgets_on_categories_id"
    t.index ["user_id"], name: "index_budgets_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.decimal "total_amount"
    t.date "due_date"
    t.string "status"
    t.integer "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_invoices_on_account_id"
  end

  create_table "monthly_summaries", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "month"
    t.integer "year"
    t.decimal "total_income"
    t.decimal "total_expense"
    t.decimal "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_monthly_summaries_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.date "payment_date"
    t.string "payment_method"
    t.integer "account_id", null: false
    t.integer "invoice_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_payments_on_account_id"
    t.index ["invoice_id"], name: "index_payments_on_invoice_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.decimal "transaction_type"
    t.integer "amount"
    t.string "description"
    t.date "transaction_date"
    t.integer "user_id", null: false
    t.integer "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_transactions_on_account_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "budgets", "categories", column: "categories_id"
  add_foreign_key "budgets", "users"
  add_foreign_key "invoices", "accounts"
  add_foreign_key "monthly_summaries", "users"
  add_foreign_key "payments", "accounts"
  add_foreign_key "payments", "invoices"
  add_foreign_key "transactions", "accounts"
  add_foreign_key "transactions", "users"
end
