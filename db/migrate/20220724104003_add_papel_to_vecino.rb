class AddPapelToVecino < ActiveRecord::Migration[6.0]
  def change
    add_column :vecinos, :papel, :string
  end
end
