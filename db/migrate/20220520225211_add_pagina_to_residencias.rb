class AddPaginaToResidencias < ActiveRecord::Migration[6.0]
  def change
    add_column :residencias, :pagina, :integer
  end
end
