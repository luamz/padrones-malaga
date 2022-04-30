class Registro < ApplicationRecord
  belongs_to :nombre_calle
  belongs_to :padron
  belongs_to :distrito
end
