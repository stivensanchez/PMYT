json.array!(@treatments) do |treatment|
  json.extract! treatment, :id, :proceso, :descripcion, :ubicacion, :proveedor, :precio, :info_id
  json.url treatment_url(treatment, format: :json)
end
