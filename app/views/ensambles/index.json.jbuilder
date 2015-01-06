json.array!(@ensambles) do |ensamble|
  json.extract! ensamble, :id, :operation_id, :xamp, :maquina, :calibre_aguja, :ppp, :margen_costura, :guia_accesorios_string, :observaciones
  json.url ensamble_url(ensamble, format: :json)
end
