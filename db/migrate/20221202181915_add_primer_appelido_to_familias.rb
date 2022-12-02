class AddPrimerAppelidoToFamilias < ActiveRecord::Migration[6.0]
  def change
    add_column :familias, :primer_apellido, :string
  end
end
