json.array!(@infos) do |info|
  json.extract! info, :id, :descripcion, :tallas, :observaciones, :medidas_prenda, :piesas_prenda, :PPP, :margen_costura, :hilos_SP, :SAM, :ficha_id
  json.url info_url(info, format: :json)
end
