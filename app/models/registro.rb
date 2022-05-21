class Registro < ApplicationRecord
  belongs_to :nombre_calle
  belongs_to :padron
  has_many :residencias

  delegate :ano, to: :padron
  delegate :distrito, to: :padron
  delegate :nombre_distrito, to: :distrito
end
