class Animal < ApplicationRecord
  belongs_to :shelter
  validates_uniqueness_of :animal_id, :scope => [:shelter_id]
end
