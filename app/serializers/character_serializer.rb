class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :species_id
  belongs_to :species
  has_many :droids
	has_many :vehicles
end
