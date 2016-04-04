json.array!(@droids) do |droid|
  json.extract! droid, :id, :name, :character_id
  json.url droid_url(droid, format: :json)
end
