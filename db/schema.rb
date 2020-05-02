# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_27_120627) do

  create_table "dankas", force: :cascade do |t|
    t.boolean "check"
    t.string "subname"
    t.string "name"
    t.integer "postal"
    t.string "addless"
    t.string "addless2"
    t.integer "tel"
    t.string "email"
    t.string "mark1"
    t.text "mark2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pasts", force: :cascade do |t|
    t.integer "danka_id"
    t.boolean "check"
    t.string "subname"
    t.string "name"
    t.string "subpenname"
    t.string "penname"
    t.date "deathday"
    t.integer "deathage"
    t.date "birthday"
    t.string "funeral"
    t.string "relation"
    t.string "mark1"
    t.text "mark2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
