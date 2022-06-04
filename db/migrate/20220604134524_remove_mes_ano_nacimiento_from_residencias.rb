class RemoveMesAnoNacimientoFromResidencias < ActiveRecord::Migration[6.0]
  def change
    remove_column :residencias, :mes_ano_nacimiento, :boolean
  end
end
