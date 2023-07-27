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

ActiveRecord::Schema.define(version: 2023_07_26_143213) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.text "web_link"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.text "image"
    t.text "site_link"
    t.string "company_name"
    t.integer "company_id"
    t.string "genre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gameplays", force: :cascade do |t|
    t.string "name"
    t.text "link"
    t.integer "game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "likes"
    t.text "image"
    t.text "site_link"
    t.string "company_name"
    t.integer "company_id"
    t.string "genre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "favorite"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "comment"
    t.string "name"
    t.integer "game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
