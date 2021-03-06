# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150523003737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: true do |t|
    t.integer  "score",      default: 0, null: false
    t.string   "exercise"
    t.integer  "weight"
    t.date     "the_date"
    t.text     "note"
    t.integer  "kcal_day"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.string   "kind"
    t.integer  "kcal_per"
    t.string   "serving_size"
    t.integer  "meals_ate",    default: 0,     null: false
    t.integer  "servings_ate", default: 0,     null: false
    t.boolean  "quickadd",     default: false, null: false
    t.boolean  "favorite",     default: false, null: false
    t.boolean  "hidden",       default: false, null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meals", force: true do |t|
    t.integer  "kcal_meal"
    t.time     "mealtime"
    t.integer  "hunger_lvl"
    t.text     "note"
    t.integer  "day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servings", force: true do |t|
    t.integer  "kcal_of_food"
    t.integer  "serv_num"
    t.integer  "meal_id"
    t.integer  "food_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "word"
    t.integer  "food_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",   null: false
    t.string   "encrypted_password",     default: "",   null: false
    t.integer  "weight",                 default: 200,  null: false
    t.integer  "goal_weight",            default: 180,  null: false
    t.integer  "max_calories",           default: 1600, null: false
    t.decimal  "goal_weekly_score"
    t.string   "sex"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["goal_weight"], name: "index_users_on_goal_weight", using: :btree
  add_index "users", ["max_calories"], name: "index_users_on_max_calories", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["weight"], name: "index_users_on_weight", using: :btree

end
