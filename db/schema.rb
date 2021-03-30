# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_30_140328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ads", force: :cascade do |t|
    t.string "title"
    t.string "company"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "link"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "post_id"
    t.index ["post_id"], name: "index_features_on_post_id"
  end

  create_table "pointcps", force: :cascade do |t|
    t.string "titleOne"
    t.string "authorOne"
    t.text "contentOne"
    t.string "imageOne"
    t.string "titleTwo"
    t.string "authorTwo"
    t.text "contentTwo"
    t.string "imageTwo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "votesPointCPOne", default: 0
    t.integer "votesPointCPTwo", default: 0
  end

  create_table "pointcpvotes", force: :cascade do |t|
    t.integer "articleOneVote", default: 0
    t.integer "articleTwoVote", default: 0
    t.bigint "user_id"
    t.bigint "pointcp_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pointcp_id"], name: "index_pointcpvotes_on_pointcp_id"
    t.index ["user_id"], name: "index_pointcpvotes_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "category_id", null: false
    t.string "image"
    t.string "youtube"
    t.index ["category_id"], name: "index_posts_on_category_id"
  end

  create_table "showads", force: :cascade do |t|
    t.string "name"
    t.bigint "ad_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ad_id"], name: "index_showads_on_ad_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.string "company_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
  end

  add_foreign_key "features", "posts"
  add_foreign_key "posts", "categories"
  add_foreign_key "showads", "ads"
end
