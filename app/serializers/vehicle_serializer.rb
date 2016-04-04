class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :name, :character_id
  belongs_to :character
end
