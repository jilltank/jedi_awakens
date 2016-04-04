json.array!(@species) do |species|
  json.extract! species, :id, :name, :planet_id
  json.url species_url(species, format: :json)
end
