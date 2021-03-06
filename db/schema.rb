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

ActiveRecord::Schema.define(version: 20180225140155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "answers", id: :string, limit: 6, default: -> { "pri_nextval_str('answers_id_seq'::regclass)" }, force: :cascade do |t|
    t.text "content"
    t.string "question_id"
    t.string "application_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["application_id"], name: "index_answers_on_application_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "applications", id: :string, limit: 6, default: -> { "pri_nextval_str('applications_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "event_id"
    t.string "user_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", id: :string, limit: 6, default: -> { "pri_nextval_str('events_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
  end

# Could not dump table "pri_keys" because of following StandardError
#   Unknown type 'regclass' for column 'sequence'

  create_table "questions", id: :string, limit: 6, default: -> { "pri_nextval_str('questions_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "event_id"
    t.text "name"
    t.integer "order"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_questions_on_event_id"
  end

  create_table "users", id: :string, limit: 6, default: -> { "pri_nextval_str('users_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "lbg"
    t.datetime "year_started"
    t.datetime "year_ended"
    t.string "diet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
