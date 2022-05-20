class CreateRegistros < ActiveRecord::Migration[6.0]
  def change
    create_table :registros do |t|
      t.integer :pagina_inicio
      t.integer :pagina_fin
      t.integer :parte
      t.string :enlace
      t.bigint :nombre_calle_id, null: false, foreign_key: true
      t.references :padron, null: false, foreign_key: true

      t.timestamps
    end
  end
end
