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

ActiveRecord::Schema.define(version: 2022_05_09_123447) do

  create_table "barrios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre_barrio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "calles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "barrio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["barrio_id"], name: "index_calles_on_barrio_id"
  end

  create_table "distritos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre_distrito"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nombre_calles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre_calle"
    t.string "ano_inicio", limit: 4
    t.string "ano_fin", limit: 4
    t.bigint "calle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "principal", default: false
    t.string "fuente"
    t.text "descripcion"
    t.index ["calle_id"], name: "index_nombre_calles_on_calle_id"
  end

  create_table "padrones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "ano", limit: 4
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registros", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "pagina_inicio"
    t.integer "pagina_fin"
    t.string "enlace"
    t.bigint "nombre_calle_id", null: false
    t.bigint "padron_id", null: false
    t.bigint "distrito_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["distrito_id"], name: "index_registros_on_distrito_id"
    t.index ["nombre_calle_id"], name: "index_registros_on_nombre_calle_id"
    t.index ["padron_id"], name: "index_registros_on_padron_id"
  end

  add_foreign_key "calles", "barrios"
  add_foreign_key "nombre_calles", "calles"
  add_foreign_key "registros", "distritos"
  add_foreign_key "registros", "nombre_calles"
  add_foreign_key "registros", "padrones"
end
