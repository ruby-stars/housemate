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

ActiveRecord::Schema.define(version: 20180327181136) do

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.text "about"
    t.integer "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_groups_on_house_id"
  end

  create_table "groups_tasks", id: false, force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "task_id", null: false
    t.index ["group_id", "task_id"], name: "index_groups_tasks_on_group_id_and_task_id"
    t.index ["task_id", "group_id"], name: "index_groups_tasks_on_task_id_and_group_id"
  end

  create_table "groups_users", id: false, force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "user_id", null: false
    t.index ["group_id", "user_id"], name: "index_groups_users_on_group_id_and_user_id"
    t.index ["user_id", "group_id"], name: "index_groups_users_on_user_id_and_group_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.integer "number"
    t.string "additionalinfo"
    t.integer "postalcode"
    t.string "city"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "HouseImage"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "duedate"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
