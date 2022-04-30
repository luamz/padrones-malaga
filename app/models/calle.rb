class Calle < ApplicationRecord
  alias_attribute :nombres, :nombre_calles
  belongs_to :barrio
  has_many :nombre_calles


  def otros_nombres
    otros = []
    nombres.each do |n|
      otros << n.nombre_calle
    end
    otros = otros - [nombre_principal]
    otros.map{ |i|  %Q(#{i}) }.join(', ')
  end
end
