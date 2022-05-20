class CreateFamilias < ActiveRecord::Migration[6.0]
  def change
    create_table :familias do |t|
      t.string :apellidos

      t.timestamps
    end
  end
end
