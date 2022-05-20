class AddObservacionesToResidencias < ActiveRecord::Migration[6.0]
  def change
    add_column :residencias, :observaciones, :string
  end
end
