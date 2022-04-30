class CreateDistritos < ActiveRecord::Migration[6.0]
  def change
    create_table :distritos do |t|
      t.string :nombre_distrito

      t.timestamps
    end
  end
end
