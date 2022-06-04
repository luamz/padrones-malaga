class RemoveFieldsFromResidencias < ActiveRecord::Migration[6.0]
  def change
    remove_column :residencias, :nacimiento_estimado, :boolean
    remove_column :residencias, :llegada_estimada, :boolean
  end
end
