class CreateCalles < ActiveRecord::Migration[6.0]
  def change
    create_table :calles do |t|
      t.references :barrio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
