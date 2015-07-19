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

ActiveRecord::Schema.define(version: 20141009171150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: true do |t|
    t.string  "url",      null: false
    t.string  "title",    null: false
    t.string  "category"
    t.boolean "checkbox"
  end

  create_table "comments", force: true do |t|
    t.text    "body"
    t.integer "bookmark_id"
  end

  add_index "comments", ["bookmark_id"], name: "index_comments_on_bookmark_id", using: :btree

  create_table "replies", force: true do |t|
    t.string   "text"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string  "tag_text"
    t.integer "bookmark_id"
  end

  add_index "tags", ["bookmark_id"], name: "index_tags_on_bookmark_id", using: :btree

end
