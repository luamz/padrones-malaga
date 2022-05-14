class Distrito < ApplicationRecord
  has_many :padrones

  def num_registros
    Padron.where(distrito: self).count
  end
end
