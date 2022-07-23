class Vecino < ApplicationRecord
  belongs_to :residencia
  belongs_to :persona
  delegate :nombre_completo, to: :persona
  delegate :ano, to: :residencia
  delegate :nombre, to: :residencia
  delegate :nombre_distrito, to: :residencia
  
  
  def estado_civil
    case estado
    when 'S'
      'Soltero(a)'
    when 'C'
      'Casado(a)'
    when 'V'
      'Viudo(a)'
    end
  end
end
