class Padron < ApplicationRecord
  belongs_to :distrito

  def num_registros
    Registro.where(padron: self).count
  end
end
