class AddDescripcionToNombreCalle < ActiveRecord::Migration[6.0]
  def change
    add_column :nombre_calles, :descripcion, :text
  end
end
