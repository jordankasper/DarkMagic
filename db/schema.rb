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

ActiveRecord::Schema.define(version: 20140510163224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: true do |t|
    t.string   "name"
    t.text     "manaCost"
    t.integer  "cmc"
    t.text     "colors"
    t.text     "type"
    t.string   "supertypes"
    t.text     "types"
    t.text     "subtypes"
    t.string   "rarity"
    t.text     "text_block"
    t.text     "flavor"
    t.text     "artist"
    t.integer  "number"
    t.integer  "power"
    t.integer  "toughness"
    t.string   "layout"
    t.integer  "multiverseid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "set"
  end

  create_table "mtg_card_types", force: true do |t|
    t.integer  "mtg_card_id"
    t.integer  "mtg_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtg_cards", force: true do |t|
    t.string   "name"
    t.string   "gatherer_url"
    t.string   "multiverse_id"
    t.string   "gatherer_image_url"
    t.string   "mana_cost"
    t.string   "converted_cost"
    t.text     "oracle_text"
    t.text     "flavor_text"
    t.string   "mark"
    t.string   "power"
    t.string   "toughness"
    t.string   "loyalty"
    t.string   "rarity"
    t.string   "transformed_id"
    t.string   "colors"
    t.string   "artist"
    t.integer  "mtg_set_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtg_sets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtg_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                        null: false
    t.string   "crypted_password",             null: false
    t.string   "salt",                         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree

end
