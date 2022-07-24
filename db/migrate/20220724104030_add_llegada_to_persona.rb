class AddLlegadaToPersona < ActiveRecord::Migration[6.0]
  def change
    add_column :personas, :llegada, :string
  end
end
