class AddConfirmationLlegadaToPersona < ActiveRecord::Migration[6.0]
  def change
    add_column :personas, :confirmacion_llegada, :boolean
  end
end
