class RemoveNombrePrincipalFromCalles < ActiveRecord::Migration[6.0]
  def change
    remove_column :calles, :nombre_principal_id, :integer
  end
end
