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

ActiveRecord::Schema.define(version: 2022_06_04_135656) do

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

  create_table "familias", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "apellidos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "familias_personas", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "persona_id", null: false
    t.bigint "familia_id", null: false
    t.index ["familia_id", "persona_id"], name: "index_familias_personas_on_familia_id_and_persona_id"
  end

  create_table "nombre_calles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre_calle"
    t.string "ano_inicio", limit: 4
    t.string "ano_fin", limit: 4
    t.string "fuente"
    t.text "descripcion"
    t.boolean "principal", default: false
    t.bigint "calle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["calle_id"], name: "index_nombre_calles_on_calle_id"
  end

  create_table "padrones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "ano", limit: 4
    t.bigint "distrito_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "enlace"
    t.boolean "terminado"
    t.text "enlace2"
    t.index ["distrito_id"], name: "index_padrones_on_distrito_id"
  end

  create_table "personas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido1"
    t.string "apellido2"
    t.string "nacimiento"
    t.string "ciudad_nacimiento"
    t.boolean "confirmacion_nacimiento", default: false
    t.string "defuncion"
    t.string "ciudad_defuncion"
    t.boolean "confirmacion_defuncion", default: false
    t.string "bautismo"
    t.string "parroquia"
    t.boolean "confirmacion_bautismo", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registros", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "pagina_inicio"
    t.integer "pagina_fin"
    t.string "enlace"
    t.bigint "nombre_calle_id", null: false
    t.bigint "padron_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "parte"
    t.index ["padron_id"], name: "index_registros_on_padron_id"
  end

  create_table "residencias", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "registro_id", null: false
    t.string "numero"
    t.string "piso"
    t.string "dpto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "observaciones"
    t.integer "pagina"
    t.boolean "residencia_habitual"
    t.boolean "classificacion"
    t.boolean "contrib_anual"
    t.boolean "sueldo_anual"
    t.boolean "alquiler"
    t.boolean "sabe_leer"
    t.boolean "sabe_escribir"
    t.boolean "religion"
    t.boolean "defectos"
    t.boolean "dia_nacimiento"
    t.boolean "mes_nacimiento"
    t.boolean "ano_nacimiento"
    t.index ["registro_id"], name: "index_residencias_on_registro_id"
  end

  create_table "vecinos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "residencia_id", null: false
    t.bigint "persona_id", null: false
    t.string "edad"
    t.string "ocupacion"
    t.string "pueblo_naturaleza"
    t.string "provincia_naturaleza"
    t.string "parroquia"
    t.string "estado"
    t.string "tiempo_residencia"
    t.string "residencia_habitual"
    t.integer "dia_nacimiento"
    t.string "mes_nacimiento"
    t.string "ano_nacimiento"
    t.string "classificacion"
    t.string "contrib_anual"
    t.string "sueldo_anual"
    t.string "alquiler"
    t.boolean "sabe_leer"
    t.boolean "sabe_escribir"
    t.string "religion"
    t.string "defectos"
    t.integer "ano_nacimiento_estimado"
    t.integer "ano_llegada_estimado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["persona_id"], name: "index_vecinos_on_persona_id"
    t.index ["residencia_id"], name: "index_vecinos_on_residencia_id"
  end

  add_foreign_key "calles", "barrios"
  add_foreign_key "nombre_calles", "calles"
  add_foreign_key "padrones", "distritos"
  add_foreign_key "registros", "padrones"
  add_foreign_key "residencias", "registros"
  add_foreign_key "vecinos", "personas"
  add_foreign_key "vecinos", "residencias"
end
