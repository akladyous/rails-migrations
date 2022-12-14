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

ActiveRecord::Schema[7.0].define(version: 2022_07_29_212806) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers_reviews", id: false, force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "review_id", null: false
    t.index ["customer_id", "review_id"], name: "index_customers_reviews_on_customer_id_and_review_id"
    t.index ["review_id", "customer_id"], name: "index_customers_reviews_on_review_id_and_customer_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "inventory"
    t.decimal "price", precision: 7, scale: 2
    t.datetime "restocked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "qty_sold"
    t.boolean "flag", default: false
    t.index ["qty_sold"], name: "main_index"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.boolean "completed"
    t.date "due"
    t.bigint "blog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_tasks_on_blog_id"
  end

  add_foreign_key "tasks", "blogs"
end
