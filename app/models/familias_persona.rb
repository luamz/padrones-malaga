class FamiliasPersona < ActiveRecord::Base
  belongs_to :familia
  belongs_to :persona
end