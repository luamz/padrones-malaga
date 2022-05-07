class ChangeNombrePrincipal < ActiveRecord::Migration[6.0]
  def change
    rename_column :calles, :nombre_principal, :nombre_principal_id
  end
end
