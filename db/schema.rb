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

ActiveRecord::Schema.define(version: 2022_07_09_001228) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empleos", force: :cascade do |t|
    t.string "titulo", null: false
    t.text "descripcion", null: false
    t.integer "vacantes", null: false
    t.float "salario", default: 0.0, null: false
    t.date "fecha_inic", null: false
    t.string "tipo", null: false
    t.text "ubicacion", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string "razon_social", null: false
    t.integer "rut", null: false
    t.string "representante", null: false
    t.text "direccion", null: false
    t.string "email", null: false
    t.string "telefono", null: false
    t.string "password_digest", null: false
    t.bigint "empleo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empleo_id"], name: "index_empresas_on_empleo_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "rut", null: false
    t.string "nombre", null: false
    t.date "fecha_nac", null: false
    t.string "sexo", null: false
    t.string "telefono", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "empresas", "empleos"
end
