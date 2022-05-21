class Vecino < ApplicationRecord
  belongs_to :residencia
  belongs_to :persona
  delegate :nombre_completo, to: :persona
end
