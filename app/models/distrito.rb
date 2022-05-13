class Distrito < ApplicationRecord

  def num_registros
    Registro.where(distrito: self).count
  end
end
