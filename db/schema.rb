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

ActiveRecord::Schema.define(version: 20171023225117) do

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "chain"
    t.string "name"
    t.float "latitude", limit: 24
    t.float "longitude", limit: 24
    t.text "address"
    t.string "city"
    t.string "zip"
    t.decimal "phone", precision: 10
    t.string "country_code"
  end

  create_table "ville_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "Nom"
    t.string "maj"
    t.decimal "code_postal", precision: 10
    t.decimal "code_inse", precision: 10
    t.decimal "code_region", precision: 10
    t.float "latitude", limit: 24
    t.float "longitude", limit: 24
  end

end
