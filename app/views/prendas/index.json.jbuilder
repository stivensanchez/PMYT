json.array!(@prendas) do |prenda|
  json.extract! prenda, :id, :nombre, :cantidad, :observaciones, :info_id
  json.url prenda_url(prenda, format: :json)
end
