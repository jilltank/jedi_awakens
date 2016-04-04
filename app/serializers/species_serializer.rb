class SpeciesSerializer < ActiveModel::Serializer
  attributes :id, :name, :planet_id
  belongs_to :planet
	has_many :characters
end
