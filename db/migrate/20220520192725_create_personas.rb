class CreatePersonas < ActiveRecord::Migration[6.0]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :nacimiento
      t.string :ciudad_nacimiento
      t.boolean :confirmacion_nacimiento, default: :false
      t.string :defuncion
      t.string :ciudad_defuncion
      t.boolean :confirmacion_defuncion, default: :false
      t.string :bautismo
      t.string :parroquia
      t.boolean :confirmacion_bautismo, default: :false

      t.timestamps
    end
  end
end
