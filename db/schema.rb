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

ActiveRecord::Schema.define(version: 2021_11_17_190439) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "comic_id"
    t.integer "first_appearance"
    t.string "alter_ego"
    t.string "location"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comic_id"], name: "index_characters_on_comic_id"
  end

  create_table "comics", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "volume"
    t.string "publisher"
    t.string "writer"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "powers", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "character_id"
    t.text "description"
    t.text "limitations"
    t.string "known_users"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_powers_on_character_id"
  end

end
