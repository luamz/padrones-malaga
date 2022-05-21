class NombreCalle < ApplicationRecord
  belongs_to :calle
  alias_attribute :nombre, :nombre_calle

end
