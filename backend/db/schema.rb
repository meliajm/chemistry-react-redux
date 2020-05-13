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

ActiveRecord::Schema.define(version: 2020_05_13_220951) do

  create_table "atoms", force: :cascade do |t|
    t.string "atomic_number"
    t.string "symbol"
    t.string "name"
    t.string "atomic_mass"
    t.string "cpk_hex_color"
    t.string "electron_configuration"
    t.string "electronegativity"
    t.string "atomic_radius"
    t.string "ionization_energy"
    t.string "electron_affinity"
    t.string "oxidation_states"
    t.string "state_state"
    t.string "melting_point"
    t.string "boiling_point"
    t.string "density"
    t.string "group_block"
    t.string "year_discovered"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.string "page"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
