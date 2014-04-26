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

ActiveRecord::Schema.define(version: 20140407234500) do

  create_table "games", force: true do |t|
    t.string   "event_id"
    t.string   "event_status"
    t.date     "event_start_date"
    t.datetime "event_start_date_time"
    t.string   "event_season_type"
    t.integer  "team_event_number_in_season"
    t.string   "team_event_location_type"
    t.string   "team_event_result"
    t.integer  "team_points_scored"
    t.integer  "team_events_won"
    t.integer  "team_events_lost"
    t.integer  "team_id"
    t.integer  "opponent_points_scored"
    t.integer  "opponent_events_won"
    t.integer  "opponent_events_lost"
    t.integer  "opponent_id"
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.integer  "capacity"
    t.string   "surface"
    t.string   "name"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "team_id"
    t.string   "abbreviation"
    t.boolean  "active"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "conference"
    t.string   "division"
    t.string   "site_name"
    t.string   "city"
    t.string   "state"
    t.string   "full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

end
