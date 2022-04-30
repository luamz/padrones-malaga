class CreateBarrios < ActiveRecord::Migration[6.0]
  def change
    create_table :barrios do |t|
      t.string :nombre_barrio

      t.timestamps
    end
  end
end
