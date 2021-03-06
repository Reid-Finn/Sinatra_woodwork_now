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

ActiveRecord::Schema.define(version: 20210107223110) do

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "plans", force: :cascade do |t|
    t.string  "title"
    t.text    "instructions"
    t.string  "image",        default: "https://contractorsinsurance.org/wp-content/uploads/2018/05/history-of-carpentryTh00000000000.jpg"
    t.integer "user_id"
  end

  create_table "plans_materials", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "material_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
