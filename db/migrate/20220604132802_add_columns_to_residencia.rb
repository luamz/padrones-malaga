class AddColumnsToResidencia < ActiveRecord::Migration[6.0]
  def change
    add_column :residencias, :mes_ano_nacimiento, :boolean
    add_column :residencias, :residencia_habitual, :boolean
    add_column :residencias, :classificacion, :boolean
    add_column :residencias, :contrib_anual, :boolean
    add_column :residencias, :sueldo_anual, :boolean
    add_column :residencias, :alquiler, :boolean
    add_column :residencias, :sabe_leer, :boolean
    add_column :residencias, :sabe_escribir, :boolean
    add_column :residencias, :religion, :boolean
    add_column :residencias, :defectos, :boolean
    add_column :residencias, :nacimiento_estimado, :boolean
    add_column :residencias, :llegada_estimada, :boolean
  end
end
