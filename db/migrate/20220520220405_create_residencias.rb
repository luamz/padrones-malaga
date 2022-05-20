class CreateResidencias < ActiveRecord::Migration[6.0]
  def change
    create_table :residencias do |t|
      t.references :registro, null: false, foreign_key: true
      t.string :numero
      t.string :piso
      t.string :dpto

      t.timestamps
    end
  end
end
