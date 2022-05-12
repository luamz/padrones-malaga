class Calle < ApplicationRecord

  alias_attribute :nombres, :nombre_calles
  belongs_to :barrio
  has_many :nombre_calles

  paginates_per 20

  def principal
    nombres.where(principal:true)&.first&.nombre_calle
  end

  def otros_nombres
    otros = nombres.where(principal:false).all
    otros.map{ |i|  %Q(#{i.nombre_calle}) }.join(', ')
  end
end
