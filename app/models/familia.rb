class Familia < ApplicationRecord
  has_many :familias_personas
  has_many :personas, :through => :familias_personas
end
