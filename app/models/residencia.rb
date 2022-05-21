class Residencia < ApplicationRecord
  belongs_to :registro
  has_many :vecinos
  delegate :nombre_calle, to: :registro
  delegate :nombre, to: :nombre_calle
  delegate :padron, to: :registro
  delegate :ano, to: :padron
  delegate :distrito, to: :padron
  delegate :nombre_distrito, to: :distrito


end
