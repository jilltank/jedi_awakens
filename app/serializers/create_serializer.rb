class CreateSerializer < ActiveModel::Serializer
  attributes :id, :character, :droid, :planet, :quote, :species, :vehicle
end
