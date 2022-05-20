class Persona < ApplicationRecord
  has_many :familias_personas
  has_many :familias, :through => :familias_personas



  def nombre_completo
    nombre + " " + apellido1 + " " + apellido2
  end
end
