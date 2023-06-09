# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_03_17_203957) do

  create_table "cars", force: :cascade do |t|
    t.string "placa"
    t.string "modelo"
    t.string "color"
    t.string "marca"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "laptops", force: :cascade do |t|
    t.string "marca"
    t.string "precio"
    t.string "modelo"
    t.string "ram"
    t.string "capacidad"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "marca"
    t.string "precio"
    t.string "modelo"
    t.string "memoria"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
