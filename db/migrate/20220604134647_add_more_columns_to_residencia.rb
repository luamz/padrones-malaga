class AddMoreColumnsToResidencia < ActiveRecord::Migration[6.0]
  def change
    add_column :residencias, :dia_nacimiento, :boolean
    add_column :residencias, :mes_nacimiento, :boolean
    add_column :residencias, :ano_nacimiento, :boolean
  end
end
