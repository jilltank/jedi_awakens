json.array!(@quotes) do |quote|
  json.extract! quote, :id, :saying
  json.url quote_url(quote, format: :json)
end
