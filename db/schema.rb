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

ActiveRecord::Schema.define(version: 2019_08_07_170507) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "budgetlists", force: :cascade do |t|
    t.string "budgetname"
    t.integer "budgetamount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "budgets", force: :cascade do |t|
    t.string "budgetname"
    t.integer "budgetamount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "productName"
    t.string "category"
    t.decimal "unitPrice"
    t.integer "quantity"
    t.decimal "totalPrice"
    t.integer "receipt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receipt_id"], name: "index_products_on_receipt_id"
  end

  create_table "receipts", force: :cascade do |t|
    t.string "date"
    t.decimal "total"
    t.string "shopName"
    t.string "shopAdress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_receipts_on_user_id"
  end

  create_table "suggestions_box_hotels", force: :cascade do |t|
    t.string "hotel_name"
    t.string "pernight"
    t.string "decimal"
    t.string "country"
    t.string "city"
    t.integer "rating"
    t.string "image"
    t.boolean "buffet"
    t.boolean "hall"
    t.boolean "gym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suggestions_box_trips", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image_url"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.boolean "completed"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_todos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string "tripname"
    t.string "tripbudget"
    t.string "tripdate"
    t.string "travel_duration"
    t.string "travel_mode"
    t.string "trip_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "trip_owner"
  end

  create_table "uploads", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "receipt_id"
    t.index ["receipt_id"], name: "index_uploads_on_receipt_id"
  end

  create_table "userbudgets", force: :cascade do |t|
    t.string "user_id"
    t.string "budget_name"
    t.string "savings_type"
    t.decimal "budget_amount"
    t.decimal "budget_spent"
    t.decimal "home_rent"
    t.decimal "utilities"
    t.decimal "food_groceries"
    t.decimal "departmental"
    t.decimal "entertainment"
    t.decimal "car_auto"
    t.decimal "insurance_medical"
    t.decimal "misc"
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

end
