class NombrePrincipalChangeColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column(:calles, :nombre_principal, :integer)
  end

  def up
    change_column :calles, :nombre_principal, :integer
  end

  def down
    change_column :calles, :nombre_principal, :string
  end
end
