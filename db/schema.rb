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

ActiveRecord::Schema[8.0].define(version: 2025_03_30_172631) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "eve_alliances", force: :cascade do |t|
    t.bigint "creator_corporation_id"
    t.bigint "creator_id"
    t.datetime "date_founded"
    t.bigint "executor_corporation_id"
    t.bigint "faction_id"
    t.string "name"
    t.string "ticker"
    t.bigint "corporations_count", default: 0
    t.bigint "characters_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["characters_count"], name: "index_eve_alliances_on_characters_count"
    t.index ["creator_corporation_id"], name: "index_eve_alliances_on_creator_corporation_id"
    t.index ["creator_id"], name: "index_eve_alliances_on_creator_id"
    t.index ["executor_corporation_id"], name: "index_eve_alliances_on_executor_corporation_id"
    t.index ["faction_id"], name: "index_eve_alliances_on_faction_id"
    t.index ["name"], name: "index_eve_alliances_on_name"
  end

  create_table "eve_characters", force: :cascade do |t|
    t.bigint "alliance_id"
    t.datetime "birthday"
    t.bigint "bloodline_id"
    t.bigint "corporation_id"
    t.text "description"
    t.bigint "faction_id"
    t.string "gender"
    t.string "name"
    t.bigint "race_id"
    t.float "security_status"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alliance_id"], name: "index_eve_characters_on_alliance_id"
    t.index ["bloodline_id"], name: "index_eve_characters_on_bloodline_id"
    t.index ["corporation_id"], name: "index_eve_characters_on_corporation_id"
    t.index ["faction_id"], name: "index_eve_characters_on_faction_id"
    t.index ["race_id"], name: "index_eve_characters_on_race_id"
  end

  create_table "eve_corporations", force: :cascade do |t|
    t.bigint "alliance_id"
    t.bigint "ceo_id"
    t.bigint "creator_id"
    t.datetime "date_founded"
    t.text "description"
    t.bigint "faction_id"
    t.bigint "home_station_id"
    t.integer "member_count"
    t.string "name"
    t.bigint "shares"
    t.float "tax_rate"
    t.string "ticker"
    t.text "corporation_url"
    t.boolean "war_eligible"
    t.boolean "npc", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alliance_id"], name: "index_eve_corporations_on_alliance_id"
    t.index ["ceo_id"], name: "index_eve_corporations_on_ceo_id"
    t.index ["creator_id"], name: "index_eve_corporations_on_creator_id"
    t.index ["faction_id"], name: "index_eve_corporations_on_faction_id"
    t.index ["home_station_id"], name: "index_eve_corporations_on_home_station_id"
    t.index ["member_count"], name: "index_eve_corporations_on_member_count"
    t.index ["name"], name: "index_eve_corporations_on_name"
  end
end
