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

ActiveRecord::Schema.define(version: 2021_11_21_093135) do

  create_table "albums", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.boolean "released", default: true
    t.datetime "released_at"
    t.text "cover_art_url"
    t.time "length"
    t.string "kind"
  end

  create_table "artists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "permalink"
    t.text "bio"
    t.datetime "formed_at"
    t.boolean "verified", default: false
    t.datetime "verified_at"
    t.text "avatar_url"
    t.text "cover_photo_url"
    t.string "name"
  end

  create_table "tracks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "url"
    t.string "name"
    t.text "credits"
    t.boolean "available", default: false
    t.datetime "published_at"
  end

end
