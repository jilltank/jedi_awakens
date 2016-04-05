json.array!(@generates) do |generate|
  json.extract! generate, :id
  json.url generate_url(generate, format: :json)
end
