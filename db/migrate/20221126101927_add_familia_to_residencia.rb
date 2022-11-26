class AddFamiliaToResidencia < ActiveRecord::Migration[6.0]
  def change
    change_table :residencias do |t|
      t.references :familia, foreign_key: true
    end
  end
end
