class Padron < ApplicationRecord
  belongs_to :distrito

  def num_registros
    Registro.where(padron: self).count
  end

  def num_residencias
    Residencia.where(registro: Registro.where(padron: self)).count
  end
end
