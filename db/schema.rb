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

ActiveRecord::Schema.define(version: 2019_10_16_001129) do

  create_table "character_classes", force: :cascade do |t|
    t.string "name"
    t.string "primaryStat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "race_id", null: false
    t.integer "city_id", null: false
    t.integer "character_class_id", null: false
    t.integer "system_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_class_id"], name: "index_characters_on_character_class_id"
    t.index ["city_id"], name: "index_characters_on_city_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
    t.index ["system_id"], name: "index_characters_on_system_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_cities_on_region_id"
  end

  create_table "game_systems", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.string "input"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.integer "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_races_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "characters", "character_classes"
  add_foreign_key "characters", "cities"
  add_foreign_key "characters", "races"
  add_foreign_key "characters", "systems"
  add_foreign_key "cities", "regions"
  add_foreign_key "races", "regions"
end
