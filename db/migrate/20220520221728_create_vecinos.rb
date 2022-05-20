class CreateVecinos < ActiveRecord::Migration[6.0]
  def change
    create_table :vecinos do |t|
      t.references :residencia, null: false, foreign_key: true
      t.references :persona, null: false, foreign_key: true
      t.string :edad
      t.string :ocupacion
      t.string :pueblo_naturaleza
      t.string :provincia_naturaleza
      t.string :parroquia
      t.string :estado
      t.string :tiempo_residencia
      t.string :residencia_habitual
      t.integer :dia_nacimiento
      t.string :mes_nacimiento
      t.string :ano_nacimiento
      t.string :classificacion
      t.string :contrib_anual
      t.string :sueldo_anual
      t.string :alquiler
      t.boolean :sabe_leer
      t.boolean :sabe_escribir
      t.string :religion
      t.string :defectos
      t.integer :ano_nacimiento_estimado
      t.integer :ano_llegada_estimado

      t.timestamps
    end
  end
end
