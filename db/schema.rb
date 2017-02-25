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

ActiveRecord::Schema.define(version: 20170225214530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tvshows", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "star_rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_reviews", force: true do |t|
    t.text     "review"
    t.string   "rating"
    t.string   "name"
    t.integer  "tvshow_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_reviews", ["tvshow_id"], name: "index_user_reviews_on_tvshow_id", using: :btree

end
