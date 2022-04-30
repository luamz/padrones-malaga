class AddNombrePrincipalToCalle < ActiveRecord::Migration[6.0]
  def change
    add_column :calles, :nombre_principal, :string
  end
end
