json.array!(@materials) do |material|
  json.extract! material, :id, :nombre, :cantidad, :observaciones
  json.url material_url(material, format: :json)
end
