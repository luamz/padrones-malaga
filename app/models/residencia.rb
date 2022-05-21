class Residencia < ApplicationRecord
  belongs_to :registro
  has_many :vecinos
  delegate :nombre_calle, to: :registro
  delegate :nombre, to: :nombre_calle
  delegate :ano, to: :registro
  delegate :distrito, to: :registro
  delegate :nombre_distrito, to: :distrito


end
