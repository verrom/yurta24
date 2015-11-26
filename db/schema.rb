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

ActiveRecord::Schema.define(version: 20151126072656) do

  create_table "article_translations", force: :cascade do |t|
    t.integer  "article_id",                 null: false
    t.string   "locale",                     null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "title"
    t.text     "text",       default: "abc", null: false
  end

  add_index "article_translations", ["article_id"], name: "index_article_translations_on_article_id"
  add_index "article_translations", ["locale"], name: "index_article_translations_on_locale"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_forms", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "description_translations", force: :cascade do |t|
    t.integer  "description_id",                 null: false
    t.string   "locale",                         null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "title"
    t.text     "text",           default: "abc", null: false
  end

  add_index "description_translations", ["description_id"], name: "index_description_translations_on_description_id"
  add_index "description_translations", ["locale"], name: "index_description_translations_on_locale"

  create_table "descriptions", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_translations", force: :cascade do |t|
    t.integer  "item_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "item_name"
    t.string   "variable1"
    t.string   "variable2"
    t.string   "variable3"
    t.string   "variable4"
    t.string   "value1"
    t.string   "value2"
    t.string   "value3"
    t.string   "value4"
    t.string   "comment"
  end

  add_index "item_translations", ["item_id"], name: "index_item_translations_on_item_id"
  add_index "item_translations", ["locale"], name: "index_item_translations_on_locale"

  create_table "items", force: :cascade do |t|
    t.string   "variable1"
    t.string   "variable2"
    t.string   "variable3"
    t.string   "variable4"
    t.string   "value1"
    t.string   "value2"
    t.string   "value3"
    t.string   "value4"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "price"
    t.string   "item_name"
    t.string   "image_uid"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image_uid"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image_uid"
  end

  create_table "popup_contact_forms", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "translation_for_articles", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "translation_for_descriptions", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "translation_for_items", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
