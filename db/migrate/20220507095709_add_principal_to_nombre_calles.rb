class AddPrincipalToNombreCalles < ActiveRecord::Migration[6.0]
  def change
    add_column :nombre_calles, :principal, :boolean, default: false
  end
end
