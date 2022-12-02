class RemoveApellidosFromFamilias < ActiveRecord::Migration[6.0]
  def change
    remove_column :familias, :apellidos, :string
  end
end
