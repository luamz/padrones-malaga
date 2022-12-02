class AddPapelToFamiliasPersonas < ActiveRecord::Migration[6.0]
  def change
    add_column :familias_personas, :papel, :string
  end
end
