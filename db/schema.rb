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

ActiveRecord::Schema.define(version: 20140107003306) do

  create_table "bowls", force: true do |t|
    t.string   "name"
    t.datetime "date"
    t.boolean  "played?"
    t.string   "favorite"
    t.string   "underdog"
    t.string   "winner"
    t.integer  "spread"
  end

  create_table "picks", force: true do |t|
    t.integer "player_id"
    t.integer "bowl_id"
    t.string  "winner"
  end

  create_table "players", force: true do |t|
    t.string  "name"
    t.string  "email"
    t.string  "password"
    t.string  "payment"
    t.integer "wins"
  end

end
