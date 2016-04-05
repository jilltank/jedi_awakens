json.array!(@creates) do |create|
  json.extract! create, :id, :character, :droid, :planet, :quote, :species, :vehicle
  json.url create_url(create, format: :json)
end
