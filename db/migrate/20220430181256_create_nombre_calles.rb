class CreateNombreCalles < ActiveRecord::Migration[6.0]
  def change
    create_table :nombre_calles do |t|
      t.string :nombre_calle
      t.string :ano_inicio, limit: 4
      t.string :ano_fin, limit: 4
      t.references :calle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
