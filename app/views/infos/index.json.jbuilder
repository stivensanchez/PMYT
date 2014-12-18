json.array!(@infos) do |info|
  json.extract! info, :id, :referencia, :talla, :talla_promedio, :color, :tela, :descripcion, :especificaciones, :modulo_id, :ficha_id
  json.url info_url(info, format: :json)
end
