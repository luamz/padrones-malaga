class CreateJoinTablePersonaFamilia < ActiveRecord::Migration[6.0]
  def change
    create_join_table :personas, :familias do |t|
      # t.index [:persona_id, :familia_id]
      t.index [:familia_id, :persona_id]
    end
  end
end
