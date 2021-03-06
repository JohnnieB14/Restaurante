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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120108) do

  create_table "categories", :force => true do |t|
    t.string   "name",       :limit => 120, :null => false
    t.string   "image",      :limit => 120, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name",            :limit => 120, :null => false
    t.string   "surname",         :limit => 120, :null => false
    t.string   "email",           :limit => 120, :null => false
    t.string   "password_digest", :limit => 120, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "clients", ["email"], :name => "index_clients_on_email", :unique => true

  create_table "courses", :force => true do |t|
    t.string   "name",        :limit => 120, :null => false
    t.integer  "price",                      :null => false
    t.string   "image",       :limit => 120, :null => false
    t.integer  "category_id",                :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "course_id",    :null => false
    t.integer  "table_id",     :null => false
    t.integer  "client_id",    :null => false
    t.boolean  "paid",         :null => false
    t.datetime "request_time", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "tables", :force => true do |t|
    t.string   "code",       :limit => 120, :null => false
    t.integer  "waiter_id",                 :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name",            :limit => 120, :null => false
    t.string   "surname",         :limit => 120, :null => false
    t.string   "email",           :limit => 120, :null => false
    t.string   "password_digest", :limit => 120, :null => false
    t.integer  "privileges",                     :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "waiters", :force => true do |t|
    t.string   "name",       :limit => 120, :null => false
    t.string   "surname",    :limit => 120, :null => false
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
