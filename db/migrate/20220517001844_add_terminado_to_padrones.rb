class AddTerminadoToPadrones < ActiveRecord::Migration[6.0]
  def change
    add_column :padrones, :terminado, :boolean
  end
end
