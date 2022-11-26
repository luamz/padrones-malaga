class Familia < ApplicationRecord
  has_many :residencias
  has_many :familias_personas
  has_many :personas, :through => :familias_personas
end
