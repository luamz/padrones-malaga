class Registro < ApplicationRecord
  belongs_to :nombre_calle
  belongs_to :padron
  has_many :casas
end
