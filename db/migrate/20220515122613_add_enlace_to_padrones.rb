class AddEnlaceToPadrones < ActiveRecord::Migration[6.0]
  def change
    add_column :padrones, :enlace, :text
  end
end
