class Familia < ApplicationRecord
  has_many :residencias
  has_many :familias_personas
  has_many :personas, :through => :familias_personas

  def progenitores
    progenitores = familias_personas.where(papel: %w[Padre Madre]).all
    progenitores.map{ |i|  %Q(#{i.persona.nombre_completo}) }.join(', ')
  end

  def hijos
    hijos = familias_personas.where(papel: %w[Hijo Hija Hijastro Hijastra]).all
    hijos.map{ |i|  %Q(#{i.persona.nombre_completo}) }.join(', ')
  end

  def otros
    otros = familias_personas.where.not(papel: %w[Padre Madre Hijo Hija Hijastro Hijastra]).all
    otros.map{ |i|  %Q(#{i.persona.nombre_completo}\(#{i.papel}\)) }.join(', ')
  end
end
