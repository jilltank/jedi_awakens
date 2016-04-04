class PlanetSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :species
	has_many :characters, :through => :species
end
