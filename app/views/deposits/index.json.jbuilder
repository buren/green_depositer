json.array!(@deposits) do |deposit|
  json.extract! deposit, :id, :quantity, :unit, :category, :latitude, :longitude
  json.url deposit_url(deposit, format: :json)
end
