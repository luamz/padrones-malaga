class AddSegundoApellidoToFamilias < ActiveRecord::Migration[6.0]
  def change
    add_column :familias, :segundo_apellido, :string
  end
end
