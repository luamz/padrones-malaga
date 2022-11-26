class Residencia < ApplicationRecord
  belongs_to :registro
  belongs_to :familia
  has_many :vecinos
  delegate :nombre_calle, to: :registro
  delegate :nombre, to: :nombre_calle
  delegate :ano, to: :registro
  delegate :distrito, to: :registro
  delegate :nombre_distrito, to: :distrito



  def direccion_completa
    nombre + ', ' +numero if nombre.present? && numero.present?
  end
  def todos_los_vecinos
    vecinos.map{ |vecino|  %Q(#{vecino.nombre_completo}) }.join(', ')
  end

end
