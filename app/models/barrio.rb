class Barrio < ApplicationRecord
  has_many :calles

  def num_calles
    Calle.where(barrio: self).count
  end
end
