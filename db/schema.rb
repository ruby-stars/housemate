# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_190_521_171_605) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'groups', force: :cascade do |t|
    t.string 'name'
    t.text 'about'
    t.integer 'house_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'user_id'
    t.index ['house_id'], name: 'index_groups_on_house_id'
  end

  create_table 'houses', force: :cascade do |t|
    t.string 'name'
    t.string 'street'
    t.integer 'number'
    t.string 'additionalinfo'
    t.integer 'postalcode'
    t.string 'city'
    t.text 'about'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'HouseImage'
  end

  create_table 'mates', id: false, force: :cascade do |t|
    t.integer 'house_id'
    t.integer 'user_id'
    t.boolean 'house_manager', default: false
    t.index ['house_id'], name: 'index_mates_on_house_id'
    t.index ['user_id'], name: 'index_mates_on_user_id'
  end

  create_table 'tasks', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.date 'duedate'
    t.boolean 'completed'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'user_id'
    t.integer 'group_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.string 'nickname'
    t.string 'firstname'
    t.string 'lastname'
    t.text 'bio'
    t.date 'birthday'
    t.string 'avatar'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end
end
