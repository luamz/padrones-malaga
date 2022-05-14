class CreatePadrones < ActiveRecord::Migration[6.0]
  def change
    create_table :padrones do |t|
      t.string :ano, limit: 4
      t.references :distrito, null: false, foreign_key: true

      t.timestamps
    end
  end
end
