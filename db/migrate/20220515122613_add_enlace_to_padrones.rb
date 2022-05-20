class AddEnlaceToPadrones < ActiveRecord::Migration[6.0]
  def change
    add_column :padrones, :enlace, :text
    add_column :padrones, :enlace2, :text
  end
end
