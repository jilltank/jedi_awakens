json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :name, :character_id
  json.url vehicle_url(vehicle, format: :json)
end
