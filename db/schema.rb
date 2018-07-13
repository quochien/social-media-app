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

ActiveRecord::Schema.define(version: 2018_07_13_075238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "facebook_apps", force: :cascade do |t|
    t.string "name", null: false
    t.string "app_id", null: false
    t.string "app_secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "page_url"
  end

  create_table "monitor_task_histories", force: :cascade do |t|
    t.integer "monitor_task_id", null: false
    t.string "last_posted_facebook_id"
    t.string "last_posted_facebook_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monitor_tasks", force: :cascade do |t|
    t.integer "facebook_app_id", null: false
    t.string "source_facebook_url", null: false
    t.string "last_posted_facebook_id"
    t.datetime "last_posted_facebook_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
