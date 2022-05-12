class AddFuenteToNombreCalle < ActiveRecord::Migration[6.0]
  def change
    add_column :nombre_calles, :fuente, :string
  end
end
