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

ActiveRecord::Schema.define(version: 2022_06_07_213950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.date "date"
    t.string "place"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "winner", default: false
    t.bigint "schedule_id", null: false
    t.string "result"
    t.index ["schedule_id"], name: "index_games_on_schedule_id"
    t.index ["team_id"], name: "index_games_on_team_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "to"
    t.string "subject"
    t.string "body"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.date "date"
    t.string "place"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.jsonb "partner", default: {}, null: false
    t.index ["partner"], name: "index_schedules_on_partner", using: :gin
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "player_1"
    t.integer "player_2"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "schedule_id", null: false
    t.bigint "game_id", null: false
    t.index ["game_id"], name: "index_teams_on_game_id"
    t.index ["schedule_id"], name: "index_teams_on_schedule_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "last_name"
    t.text "about_me"
    t.string "difficulty"
    t.integer "user_score", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "games", "schedules"
  add_foreign_key "games", "teams"
  add_foreign_key "messages", "users"
  add_foreign_key "schedules", "users"
  add_foreign_key "teams", "games"
  add_foreign_key "teams", "schedules"
end
